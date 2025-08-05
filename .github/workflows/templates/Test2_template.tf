{# .github/workflows/templates/test.tf.j2 #}
resource "Cars" "{{ car_name }}" {
  colour = "{{ colour_name }}"
}

