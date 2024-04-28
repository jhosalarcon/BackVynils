import {MigrationInterface, QueryRunner} from "typeorm";

export class DataSetup1611260351811 implements MigrationInterface {

    migration = `
    `;

    async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(this.migration);
    }

    public async down(queryRunner: QueryRunner): Promise<any> {
    }

}
