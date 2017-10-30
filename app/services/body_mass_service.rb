module BodyMassService
  extend self

BODY_MASS_TABLE = {
  1..15    => "Very severely underweight",
  15..16   => "severely underweight",
  16..18.5 => "Underweight",
  18.5..25 => "Normal (healthy weight)",
  25..30   => "Overweight",
  30..35   => "Obese Class I (Moderately obese)",
  35..40   => "Obese Class II (Severely obese)",
  40..1000  => "Obese Class II (Severely obese)"
}

  def obtain_body_mass(kilograms, height)
    result = (kilograms.to_f / (height.to_f/100.0)**2).round(2)
    title = BODY_MASS_TABLE.select {|table| table === result }.values.first
    {result => title}
  end
end
