__constant sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;


__kernel void divide_scalar_by_image_3d(
    IMAGE_src_TYPE  src,
    IMAGE_dst_TYPE  dst,
    float scalar
)
{
  const int x = get_global_id(0);
  const int y = get_global_id(1);
  const int z = get_global_id(2);

  const int4 pos = (int4){x,y,z,0};

  const float value = scalar / READ_src_IMAGE(src, sampler, pos).x;

  WRITE_dst_IMAGE(dst, pos, CONVERT_dst_PIXEL_TYPE(value));
}
