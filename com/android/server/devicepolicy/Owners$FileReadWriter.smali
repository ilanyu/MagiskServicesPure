.class abstract Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FileReadWriter"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    .line 645
    return-void
.end method


# virtual methods
.method readFromFileLocked()V
    .registers 10

    .line 701
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 705
    return-void

    .line 710
    :cond_9
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 711
    .local v0, "f":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 713
    .local v1, "input":Ljava/io/InputStream;
    :try_start_11
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 714
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 715
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 718
    const/4 v3, 0x0

    .line 719
    .local v3, "depth":I
    :cond_24
    :goto_24
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .line 719
    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_75

    .line 720
    packed-switch v5, :pswitch_data_80

    goto :goto_6a

    .line 725
    :pswitch_30
    add-int/lit8 v3, v3, -0x1

    goto :goto_6a

    .line 722
    :pswitch_33
    add-int/lit8 v3, v3, 0x1

    .line 723
    nop

    .line 731
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, "tag":Ljava/lang/String;
    if-ne v3, v6, :cond_5f

    .line 733
    const-string/jumbo v6, "root"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 734
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid root tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_5b} :catch_6d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_5b} :catch_6d
    .catchall {:try_start_11 .. :try_end_5b} :catchall_6b

    .line 747
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 735
    return-void

    .line 740
    :cond_5f
    :try_start_5f
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z

    move-result v6
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_63} :catch_6d
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_6d
    .catchall {:try_start_5f .. :try_end_63} :catchall_6b

    if-nez v6, :cond_69

    .line 747
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 741
    return-void

    .line 743
    .end local v4    # "tag":Ljava/lang/String;
    :cond_69
    goto :goto_24

    .line 728
    :goto_6a
    goto :goto_24

    .line 747
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "depth":I
    .end local v5    # "type":I
    :catchall_6b
    move-exception v2

    goto :goto_7a

    .line 744
    :catch_6d
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Error parsing owners information file"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_6b

    .line 747
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_75
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 748
    nop

    .line 749
    return-void

    .line 747
    :goto_7a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    nop

    nop

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method abstract readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
.end method

.method abstract shouldWrite()Z
.end method

.method abstract writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method writeToFileLocked()V
    .registers 6

    .line 650
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->shouldWrite()Z

    move-result v0

    if-nez v0, :cond_33

    .line 655
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 659
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_32

    .line 660
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_32
    return-void

    .line 669
    :cond_33
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 670
    .local v0, "f":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    move-object v2, v1

    .line 672
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 673
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 674
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 677
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 678
    const-string/jumbo v4, "root"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->writeInner(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 684
    const-string/jumbo v4, "root"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 686
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 689
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6f} :catch_71

    .line 690
    const/4 v1, 0x0

    .line 697
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    goto :goto_7f

    .line 692
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_71
    move-exception v1

    .line 693
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Exception when writing"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    if-eqz v2, :cond_7e

    .line 695
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 698
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7e
    move-object v1, v2

    .line 698
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :goto_7f
    return-void
.end method
