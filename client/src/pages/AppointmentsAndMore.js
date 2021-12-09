import React, { useState, useEffect } from "react";
import axios from "axios";
import { Divider, Form, Select } from "semantic-ui-react";
import AppointmentForm from '../components/AppointmentForm';

const AppointmentsAndMore = () => {
  const [appointments, setAppointments] = useState([]);
  const [patients, setPatients] = useState([]);
  const [physicians, setPhysicians] = useState([]);
  useEffect(() => {
    getData();
  }, []);

  const getData = async () => {
    let physiciansInfo = await axios.get("/api/physicians");
    setPhysicians(physiciansInfo.data);
    let patientsInfo = await axios.get("/api/patients");
    setPatients(patientsInfo.data);
    let appointmentsInfo = await axios.get("/api/appointments");
    setAppointments(appointmentsInfo.data);
  };

  const addAppointment = async (appointments) => {
    try {
      let info = await axios.post(`/api/appointments`, appointment);
      setAppointments([info.data, ...appointments])
    } catch (error) {
      console.log(error);
      console.log(error.response);
    }
  };
  const handleSubmit = () => { };
  return (
    <div>
      <h1>AppointmentsAndMore</h1>
      <h3>Physicians</h3>
      <code>{JSON.stringify(physicians)}</code>
      <h3>Patients</h3>
      <code>{JSON.stringify(patients)}</code>
      <h3>Appointments</h3>
      <code>{JSON.stringify(appointments)}</code>
      <Divider />
      <AppointmentForm addAppointment={addAppointment} />
    </div>
  )

}

export default AppointmentsAndMore;