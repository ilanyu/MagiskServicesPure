.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field protected mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "packageInfo"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 50
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 51
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 53
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 100
    return-void

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 103
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 108
    return-void

    .line 111
    :cond_18
    const-wide/16 v1, -0x1

    .line 113
    .local v1, "currentVersionCode":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to restore package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but signatures not found in the restore data."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 116
    const/16 v3, 0x66

    .local v3, "restoreBlockReason":I
    goto :goto_60

    .line 118
    .end local v3    # "restoreBlockReason":I
    :cond_4a
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 119
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    .line 120
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->canRestoreAnyVersion()Z

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I

    move-result v3

    .line 130
    .local v3, "restoreBlockReason":I
    :goto_60
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(I)V

    .line 133
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    .line 135
    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 136
    return-void
.end method

.method protected abstract canRestoreAnyVersion()Z
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 5
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v0, "result":Lorg/json/JSONObject;
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    return-object v0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUserId()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return v0
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object v0
.end method

.method protected abstract onRestored(I)V
.end method

.method public refreshPackageSignatureAndSave()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    return-void

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 94
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 96
    return-void
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 59
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 60
    return-void
.end method

.method public abstract saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public verifyStates()V
    .registers 1

    .line 155
    return-void
.end method
