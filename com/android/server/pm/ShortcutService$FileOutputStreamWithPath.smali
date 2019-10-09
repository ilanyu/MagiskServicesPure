.class Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
.super Ljava/io/FileOutputStream;
.source "ShortcutService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileOutputStreamWithPath"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1355
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1356
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    .line 1357
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .line 1360
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    return-object v0
.end method
