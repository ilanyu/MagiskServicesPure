.class public Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/DataChangedJournal$Consumer;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 63
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

.method constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 51
    return-void
.end method

.method static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 138
    .local v4, "file":Ljava/io/File;
    new-instance v5, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v5, v4}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 140
    :cond_1a
    return-object v0
.end method

.method static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .registers 4
    .param p0, "journalDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    const-string/jumbo v1, "journal"

    .line 129
    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    .line 128
    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "out":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_15} :catch_1b
    .catchall {:try_start_b .. :try_end_15} :catchall_19

    .line 63
    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 64
    .end local v0    # "out":Ljava/io/RandomAccessFile;
    return-void

    .line 63
    .restart local v0    # "out":Ljava/io/RandomAccessFile;
    :catchall_19
    move-exception v2

    goto :goto_1d

    .line 60
    :catch_1b
    move-exception v1

    :try_start_1c
    throw v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 63
    :goto_1d
    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public delete()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 96
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/DataChangedJournal;

    .line 99
    .local v0, "that":Lcom/android/server/backup/DataChangedJournal;
    :try_start_8
    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19

    return v2

    .line 100
    :catch_19
    move-exception v2

    .line 101
    .local v2, "exception":Ljava/io/IOException;
    return v1

    .line 104
    .end local v0    # "that":Lcom/android/server/backup/DataChangedJournal;
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_1b
    return v1
.end method

.method public forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    .registers 8
    .param p1, "consumer"    # Lcom/android/server/backup/DataChangedJournal$Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 73
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 76
    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_3a
    .catchall {:try_start_10 .. :try_end_15} :catchall_38

    .line 73
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    nop

    .line 78
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-lez v3, :cond_24

    .line 79
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/android/server/backup/DataChangedJournal$Consumer;->accept(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_23} :catch_2e
    .catchall {:try_start_16 .. :try_end_23} :catchall_2b

    .line 81
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_16

    .line 82
    :cond_24
    :try_start_24
    invoke-static {v1, v2}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_3a
    .catchall {:try_start_24 .. :try_end_27} :catchall_38

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 83
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    return-void

    .line 82
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_2b
    move-exception v3

    move-object v4, v1

    goto :goto_34

    .line 73
    :catch_2e
    move-exception v3

    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 82
    :catchall_30
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_34
    :try_start_34
    invoke-static {v4, v2}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_38} :catch_3a
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_38
    move-exception v2

    goto :goto_3c

    .line 73
    :catch_3a
    move-exception v1

    :try_start_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 82
    :goto_3c
    invoke-static {v1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
