within VehicleInterfaces.Mechanics.NormalisedTranslational;
model PositionSensor "Ideal sensor to measure the position of a Flange"
  extends Modelica.Icons.TranslationalSensor;

  Interfaces.Flange flange_a "Flange to be measured"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Blocks.Interfaces.RealOutput position
    "Absolute position of flange as output signal"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));

equation
  position = flange_a.s;
  0 = flange_a.f;

  annotation (
    Documentation(info="<html>
<p>Measures a normalized position in a 1D normalized translational system.  Cannot be connected to components from the Modelica.Mechanics.Translational library</p>
</html>"),
    Diagram(graphics={Line(points={{-96,0},{-70,0}}, color={95,95,95}),
          Line(points={{70,0},{100,0}}, color={95,95,95})}),
    Icon(graphics={
        Line(points={{-96,0},{-70,0}}, color={95,95,95}),
        Line(points={{70,0},{100,0}}, color={95,95,95}),
        Text(
          extent={{-150,80},{150,40}},
          textString="%name",
          lineColor={0,0,255})}));
end PositionSensor;