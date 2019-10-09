.class Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
.super Ljava/lang/Object;
.source "VerityUtils.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedShmBufferFactory"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mShm:Landroid/os/SharedMemory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/VerityUtils$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/security/VerityUtils$1;

    .line 179
    invoke-direct {p0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2c

    .line 192
    const-string v0, "apkverity"

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 193
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 196
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 197
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 194
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Failed to set protection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple instantiation from this factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_34} :catch_34

    .line 198
    :catch_34
    move-exception v0

    .line 199
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to set protection"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLimit()I
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_c
    return v0
.end method

.method public releaseSharedMemory()Landroid/os/SharedMemory;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 205
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 206
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 209
    .local v0, "tmp":Landroid/os/SharedMemory;
    iput-object v1, p0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->mShm:Landroid/os/SharedMemory;

    .line 210
    return-object v0
.end method
