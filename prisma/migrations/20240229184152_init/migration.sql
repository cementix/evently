-- CreateTable
CREATE TABLE "User" (
    "clerkId" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "photo" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatetAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("clerkId")
);

-- CreateTable
CREATE TABLE "Event" (
    "title" TEXT NOT NULL,
    "description" TEXT,
    "location" TEXT,
    "imageUrl" TEXT NOT NULL,
    "startDateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "endDateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "price" TEXT,
    "isFree" BOOLEAN DEFAULT false,
    "url" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatetAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Event_pkey" PRIMARY KEY ("title")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_clerkId_key" ON "User"("clerkId");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");
