/*
  Warnings:

  - You are about to drop the `Status` table. If the table is not empty, all the data it contains will be lost.

*/
-- CreateEnum
CREATE TYPE "PostStatus" AS ENUM ('AVAILABLE', 'ADOPTED');

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_statusId_fkey";

-- AlterTable
ALTER TABLE "Post" ADD COLUMN     "status" "PostStatus" NOT NULL DEFAULT 'AVAILABLE';

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "emailVerified" TIMESTAMP(3),
ADD COLUMN     "phoneVerified" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "profileComplete" BOOLEAN NOT NULL DEFAULT false,
ALTER COLUMN "phoneNumber" DROP NOT NULL;

-- DropTable
DROP TABLE "Status";
