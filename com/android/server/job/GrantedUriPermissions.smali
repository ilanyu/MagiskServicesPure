.class public final Lcom/android/server/job/GrantedUriPermissions;
.super Ljava/lang/Object;
.source "GrantedUriPermissions.java"


# instance fields
.field private final mGrantFlags:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mSourceUserId:I

.field private final mTag:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/IActivityManager;IILjava/lang/String;)V
    .registers 7
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "grantFlags"    # I
    .param p3, "uid"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 42
    iput p2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 43
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 44
    iput-object p4, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 46
    return-void
.end method

.method public static checkGrantFlags(I)Z
    .registers 2
    .param p0, "grantFlags"    # I

    .line 60
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static createFromClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 16
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;

    .line 90
    invoke-static {p5}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_8
    const/4 v0, 0x0

    .line 94
    .local v0, "perms":Lcom/android/server/job/GrantedUriPermissions;
    if-eqz p1, :cond_17

    .line 95
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .line 98
    :cond_17
    return-object v0
.end method

.method public static createFromIntent(Landroid/app/IActivityManager;Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 18
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 67
    .local v8, "grantFlags":I
    invoke-static {v8}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_c
    const/4 v9, 0x0

    .line 73
    .local v9, "perms":Lcom/android/server/job/GrantedUriPermissions;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 74
    .local v10, "data":Landroid/net/Uri;
    if-eqz v10, :cond_22

    .line 75
    move-object v0, p0

    move-object v1, v10

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move v5, v8

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .line 79
    .end local v9    # "perms":Lcom/android/server/job/GrantedUriPermissions;
    .local v0, "perms":Lcom/android/server/job/GrantedUriPermissions;
    move-object v9, v0

    .end local v0    # "perms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local v9    # "perms":Lcom/android/server/job/GrantedUriPermissions;
    :cond_22
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    .line 80
    .local v11, "clip":Landroid/content/ClipData;
    if-eqz v11, :cond_36

    .line 81
    move-object v0, p0

    move-object v1, v11

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move v5, v8

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v9

    .line 85
    :cond_36
    return-object v9
.end method

.method private static grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 20
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 104
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 105
    .local v0, "N":I
    const/4 v1, 0x0

    move-object/from16 v10, p7

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v1, "i":I
    .local v10, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 106
    move-object v11, p1

    invoke-virtual {v11, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lcom/android/server/job/GrantedUriPermissions;->grantItem(Landroid/app/IActivityManager;Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v10

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 109
    .end local v1    # "i":I
    :cond_1f
    move-object v11, p1

    return-object v10
.end method

.method private static grantItem(Landroid/app/IActivityManager;Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 18
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 134
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 135
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v0, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    goto :goto_1a

    .line 138
    .end local v0    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :cond_18
    move-object/from16 v0, p7

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local v0    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_1a
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 139
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_36

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 140
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .line 143
    :cond_36
    return-object v0
.end method

.method private static grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 23
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 116
    nop

    .line 117
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_43

    .line 116
    move-object/from16 v1, p1

    :try_start_7
    invoke-static {v1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 118
    .local v8, "sourceUserId":I
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 119
    .end local p1    # "uri":Landroid/net/Uri;
    .local v1, "uri":Landroid/net/Uri;
    if-nez p7, :cond_22

    .line 120
    new-instance v0, Lcom/android/server/job/GrantedUriPermissions;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_40

    move-object v10, p0

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    :try_start_1b
    invoke-direct {v0, v10, v12, v11, v13}, Lcom/android/server/job/GrantedUriPermissions;-><init>(Landroid/app/IActivityManager;IILjava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 122
    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v0, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    move-object v14, v0

    goto :goto_2b

    .line 125
    .end local v0    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .end local v8    # "sourceUserId":I
    .restart local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :catch_20
    move-exception v0

    goto :goto_4d

    .line 122
    .restart local v8    # "sourceUserId":I
    :cond_22
    move-object v10, p0

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v14, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_2b
    :try_start_2b
    iget-object v3, v14, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    move-object v2, v10

    move v4, v11

    move-object/from16 v5, p3

    move-object v6, v1

    move v7, v12

    move/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 124
    iget-object v0, v14, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3d} :catch_3e

    .line 127
    .end local v8    # "sourceUserId":I
    goto :goto_56

    .line 125
    :catch_3e
    move-exception v0

    goto :goto_4f

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v14    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :catch_40
    move-exception v0

    move-object v10, p0

    goto :goto_47

    :catch_43
    move-exception v0

    move-object v10, p0

    move-object/from16 v1, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v14    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_47
    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    :goto_4d
    move-object/from16 v14, p7

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4f
    const-string v2, "JobScheduler"

    const-string v3, "AM dead"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_56
    return-object v14
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 161
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 162
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 166
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 167
    .local v3, "u":Landroid/net/Uri;
    if-eqz v3, :cond_4f

    .line 168
    const-wide v4, 0x20900000005L

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    .end local v3    # "u":Landroid/net/Uri;
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 172
    .end local v2    # "i":I
    :cond_52
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 173
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGrantFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    const-string v0, " mSourceUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 150
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPermissionOwner="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    .line 152
    .local v0, "i":I
    :goto_39
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 156
    .end local v0    # "i":I
    :cond_5d
    return-void
.end method

.method public revoke(Landroid/app/IActivityManager;)V
    .registers 7
    .param p1, "am"    # Landroid/app/IActivityManager;

    .line 49
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 51
    :try_start_a
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 54
    goto :goto_1d

    .line 53
    :catch_1c
    move-exception v1

    .line 49
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 56
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method
