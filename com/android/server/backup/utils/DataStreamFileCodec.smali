.class public final Lcom/android/server/backup/utils/DataStreamFileCodec;
.super Ljava/lang/Object;
.source "DataStreamFileCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCodec:Lcom/android/server/backup/utils/DataStreamCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/backup/utils/DataStreamCodec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 59
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/backup/utils/DataStreamCodec<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p2, "codec":Lcom/android/server/backup/utils/DataStreamCodec;, "Lcom/android/server/backup/utils/DataStreamCodec<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    .line 44
    iput-object p2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    .line 45
    return-void
.end method


# virtual methods
.method public deserialize()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    nop

    .line 56
    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_2b
    .catchall {:try_start_9 .. :try_end_e} :catchall_29

    .line 54
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    nop

    .line 58
    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v3, v2}, Lcom/android/server/backup/utils/DataStreamCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_1f
    .catchall {:try_start_f .. :try_end_15} :catchall_1c

    .line 59
    :try_start_15
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_2b
    .catchall {:try_start_15 .. :try_end_18} :catchall_29

    invoke-static {v1, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 58
    return-object v3

    .line 59
    :catchall_1c
    move-exception v3

    move-object v4, v1

    goto :goto_25

    .line 54
    :catch_1f
    move-exception v3

    :try_start_20
    throw v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 59
    :catchall_21
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_25
    :try_start_25
    invoke-static {v4, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_29} :catch_2b
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_29
    move-exception v2

    goto :goto_2d

    .line 54
    :catch_2b
    move-exception v1

    :try_start_2c
    throw v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 59
    :goto_2d
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public serialize(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/server/backup/utils/DataStreamFileCodec;, "Lcom/android/server/backup/utils/DataStreamFileCodec<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    nop

    .line 71
    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_43
    .catchall {:try_start_9 .. :try_end_e} :catchall_41

    .line 69
    .local v2, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    nop

    .line 72
    :try_start_f
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_37
    .catchall {:try_start_f .. :try_end_14} :catchall_34

    .line 69
    .local v3, "dataOutputStream":Ljava/io/DataOutputStream;
    nop

    .line 74
    :try_start_15
    iget-object v4, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v4, p1, v3}, Lcom/android/server/backup/utils/DataStreamCodec;->serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    .line 75
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1d} :catch_2a
    .catchall {:try_start_15 .. :try_end_1d} :catchall_27

    .line 76
    :try_start_1d
    invoke-static {v1, v3}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_37
    .catchall {:try_start_1d .. :try_end_20} :catchall_34

    .end local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_20
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_43
    .catchall {:try_start_20 .. :try_end_23} :catchall_41

    .end local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 77
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    return-void

    .line 76
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catchall_27
    move-exception v4

    move-object v5, v1

    goto :goto_30

    .line 69
    :catch_2a
    move-exception v4

    :try_start_2b
    throw v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 76
    :catchall_2c
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_30
    :try_start_30
    invoke-static {v5, v3}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_34} :catch_37
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .end local v3    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catchall_34
    move-exception v3

    move-object v4, v1

    goto :goto_3d

    .line 69
    :catch_37
    move-exception v3

    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 76
    :catchall_39
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3d
    :try_start_3d
    invoke-static {v4, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_41} :catch_43
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    .end local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :catchall_41
    move-exception v2

    goto :goto_45

    .line 69
    :catch_43
    move-exception v1

    :try_start_44
    throw v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 76
    :goto_45
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method
