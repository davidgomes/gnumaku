#include "image.h"

static scm_t_bits image_tag;

Image*
check_image (SCM image_smob)
{
    scm_assert_smob_type (image_tag, image_smob);

    return (Image *) SCM_SMOB_DATA (image_smob);
}

static SCM
make_image (SCM s_file)
{
    SCM smob;
    const char *file = scm_to_locale_string (s_file);
    Image *image = (Image *) scm_gc_malloc (sizeof (Image), "image");

    image->bitmap = NULL;

    SCM_NEWSMOB (smob, image_tag, image);

    image->bitmap = al_load_bitmap (file);

    return smob;
}

SCM
make_image_from_bitmap (ALLEGRO_BITMAP *bitmap)
{
    SCM smob;
    Image *image = (Image *) scm_gc_malloc (sizeof (Image), "image");

    image->bitmap = NULL;

    SCM_NEWSMOB (smob, image_tag, image);

    image->bitmap = bitmap;

    return smob;
}

static SCM
get_image_width (SCM image_smob)
{
    Image *image = check_image (image_smob);

    return scm_from_int (al_get_bitmap_width (image->bitmap));
}

static SCM
get_image_height (SCM image_smob)
{
    Image *image = check_image (image_smob);

    return scm_from_int (al_get_bitmap_height (image->bitmap));
}

static size_t
free_image (SCM image_smob)
{
    Image *image = (Image *) SCM_SMOB_DATA (image_smob);

    al_destroy_bitmap (image->bitmap);
    scm_gc_free (image, sizeof (Image), "image");

    return 0;
}

static int
print_image (SCM image_smob, SCM port, scm_print_state *pstate)
{
    // Image *image = (Image *) SCM_SMOB_DATA (image_smob);

    scm_puts ("#<Image >", port);

    /* non-zero means success */
    return 1;
}

void
init_image_type (void)
{
    image_tag = scm_make_smob_type ("Image", sizeof (Image));
    scm_set_smob_mark (image_tag, 0);
    scm_set_smob_free (image_tag, free_image);
    scm_set_smob_print (image_tag, print_image);

    scm_c_define_gsubr ("make-image", 1, 0, 0, make_image);
    scm_c_define_gsubr ("image-width", 1, 0, 0, get_image_width);
    scm_c_define_gsubr ("image-height", 1, 0, 0, get_image_height);

    scm_c_export ("make-image", NULL);
    scm_c_export ("image-width", NULL);
    scm_c_export ("image-height", NULL);
}