.class public Lcom/android/server/os/RegionalizationService;
.super Lcom/android/internal/os/IRegionalizationService$Stub;
.source "RegionalizationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionalizationService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/android/internal/os/IRegionalizationService$Stub;-><init>()V

    .line 54
    return-void
.end method

.method private deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "delDir"    # Z

    .line 149
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_d

    return-void

    .line 153
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 154
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/os/RegionalizationService;->deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 156
    .end local v1    # "i":I
    :cond_1e
    if-eqz p3, :cond_23

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 159
    .end local v0    # "children":[Ljava/lang/String;
    :cond_23
    goto :goto_3d

    .line 160
    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 161
    :cond_3a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 164
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public checkFileExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "filepath"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_e

    .line 62
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 60
    :goto_e
    const/4 v1, 0x0

    return v1
.end method

.method public createFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "fileName"    # Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 144
    goto :goto_28

    .line 142
    :catch_9
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "RegionalizationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    :goto_28
    return-void
.end method

.method public deleteFilesUnderDir(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "delDir"    # Z

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_10

    .line 134
    :cond_c
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/os/RegionalizationService;->deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V

    .line 135
    return-void

    .line 132
    :goto_10
    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "regularExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_d2

    .line 71
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 74
    .local v3, "fr":Ljava/io/FileReader;
    move-object v4, v2

    .line 76
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1b
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 77
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 78
    nop

    .line 79
    .local v2, "line":Ljava/lang/String;
    :cond_28
    :goto_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_4a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_4a

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 81
    invoke-virtual {v2, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 85
    :cond_46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_49} :catch_73
    .catchall {:try_start_1b .. :try_end_49} :catchall_71

    goto :goto_28

    .line 92
    .end local v2    # "line":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_50

    .line 94
    :catch_4e
    move-exception v2

    goto :goto_54

    .line 93
    :goto_50
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_53} :catch_4e

    goto :goto_70

    .line 94
    :goto_54
    nop

    .line 95
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "RegionalizationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5c
    const-string v7, "Close the reader error, caused by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_a5

    .line 96
    :cond_70
    :goto_70
    goto :goto_a5

    .line 91
    :catchall_71
    move-exception v2

    goto :goto_a6

    .line 88
    :catch_73
    move-exception v2

    .line 89
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_74
    const-string v5, "RegionalizationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read File error, caused by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_71

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_96

    :try_start_90
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_96

    .line 94
    :catch_94
    move-exception v2

    goto :goto_9c

    .line 93
    :cond_96
    :goto_96
    if-eqz v3, :cond_70

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9b} :catch_94

    goto :goto_70

    .line 94
    :goto_9c
    nop

    .line 95
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "RegionalizationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5c

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :goto_a5
    return-object v1

    .line 91
    :goto_a6
    nop

    .line 92
    if-eqz v4, :cond_af

    :try_start_a9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_af

    .line 94
    :catch_ad
    move-exception v5

    goto :goto_b5

    .line 93
    :cond_af
    :goto_af
    if-eqz v3, :cond_d1

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b4} :catch_ad

    goto :goto_d1

    .line 94
    :goto_b5
    nop

    .line 95
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close the reader error, caused by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RegionalizationService"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 96
    :cond_d1
    :goto_d1
    throw v2

    .line 68
    .end local v1    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    :cond_d2
    :goto_d2
    return-object v2
.end method

.method public bridge synthetic readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/RegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "append"    # Z

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4a

    .line 107
    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v2

    .line 110
    :cond_1a
    const/4 v1, 0x0

    .line 112
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_1b
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v1, v3

    .line 113
    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_32
    .catchall {:try_start_1b .. :try_end_24} :catchall_30

    .line 118
    nop

    .line 119
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 123
    goto :goto_2e

    .line 120
    :catch_29
    move-exception v3

    .line 121
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local p0    # "this":Lcom/android/server/os/RegionalizationService;
    .end local p1    # "filepath":Ljava/lang/String;
    .end local p2    # "content":Ljava/lang/String;
    .end local p3    # "append":Z
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2d
    return v2

    .line 126
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/os/RegionalizationService;
    .restart local p1    # "filepath":Ljava/lang/String;
    .restart local p2    # "content":Ljava/lang/String;
    .restart local p3    # "append":Z
    :goto_2e
    const/4 v2, 0x1

    return v2

    .line 118
    :catchall_30
    move-exception v3

    goto :goto_43

    .line 114
    :catch_32
    move-exception v3

    .line 115
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_33
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    .line 116
    nop

    .line 118
    if-eqz v1, :cond_42

    .line 119
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 123
    goto :goto_42

    .line 120
    :catch_3d
    move-exception v4

    .line 121
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 116
    .end local v4    # "e":Ljava/io/IOException;
    :cond_42
    :goto_42
    return v2

    .line 118
    .end local v3    # "e":Ljava/io/IOException;
    :goto_43
    if-eqz v1, :cond_49

    .line 119
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_29

    .line 123
    nop

    .line 122
    :cond_49
    throw v3

    .line 105
    .end local v1    # "fw":Ljava/io/FileWriter;
    :cond_4a
    :goto_4a
    return v2
.end method
