# Priority Encoder Verification Environment (SystemVerilog)

This project presents the design verification of a 4-bit Priority Encoder using a complete SystemVerilog testbench environment. The verification framework was developed using modular verification components to automate stimulus generation, drive inputs to the DUT, and validate functional behavior through simulation.

---

## Objective

Develop a reusable SystemVerilog verification environment to verify the functionality of a 4-bit Priority Encoder under multiple input combinations and ensure correct priority encoding behavior.

---

## Tools Used

• SystemVerilog
• EDA Playground / Simulator
• GTKWave (for waveform analysis)

---

## DUT Description

The Design Under Test (DUT) is a 4-bit Priority Encoder with four inputs (I0–I3) and two output bits (a, b). The encoder assigns higher priority to higher-order inputs and generates the corresponding binary encoded output.

---

## Verification Components

• Transaction Class – Defines input stimulus transactions  
• Generator – Produces randomized test vectors  
• Driver – Drives generated inputs to the DUT  
• Interface – Connects verification environment and DUT  
• Environment – Integrates all verification components  
• Test – Controls simulation execution  
• Testbench – Instantiates DUT and verification environment

---

## Verification Results

1. Verified priority encoding functionality for multiple input combinations.
2. Generated randomized stimulus using transaction-based verification.
3. Successfully drove test vectors through the driver and interface.
4. Observed correct DUT responses for all tested scenarios.
5. Validated functionality using simulation logs and waveform analysis.
6. Achieved automated and reusable verification flow.

---

## Design Insights

• Modular architecture improves code reusability and scalability.
• Transaction-based verification simplifies test generation.
• Separation of generator, driver, and environment improves maintainability.
• Automated verification reduces manual testing effort and increases coverage.
• The methodology can be extended to verify larger digital designs and communication systems.

---

## Conclusion

Successfully developed and verified a complete SystemVerilog verification environment for a 4-bit Priority Encoder. The project provided practical experience in verification methodologies, testbench architecture, random stimulus generation, simulation, debugging, and functional validation of digital circuits.
