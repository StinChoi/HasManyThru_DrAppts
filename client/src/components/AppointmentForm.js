import React, { useState } from "react";
import { Button, Form } from "semantic-ui-react";

const AppointmentForm = (props) => {
  const [physicianId, setPhysicianId] = useState("");
  const [patientId, setPatientId] = useState("");
  const [time, setTime] = useState("");
  const handleSubmit = (e) => {
    console.log({ physicianId, patientId, time });
    props.addAppointment({ patient_id: patientId, physician_id: physicianId, score });
  };

  return (
    <Form onSubmit={handleSubmit}>
      <Form.Field>
        <label>Physician ID</label>
        <Form.Input
          value={physicianId}
          onChange={(e, { value }) => setPhysicianId(value)}
        />
      </Form.Field>
      <Form.Field>
        <label>Patient ID</label>
        <Form.Input
          value={patientId}
          onChange={(e, { value }) => setPatientId(value)}
        />
      </Form.Field>
      <Form.Field>
        <label>Time</label>
        <Form.Input
          value={score}
          onChange={(e, { value }) => setTime(value)}
        />
      </Form.Field>

      <Button>Add</Button>
    </Form>
  );
};

export default AppointmentForm;