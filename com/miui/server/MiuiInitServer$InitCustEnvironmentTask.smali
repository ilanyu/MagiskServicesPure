.class Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;
.super Ljava/lang/Thread;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiInitServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCustEnvironmentTask"
.end annotation


# instance fields
.field private mCustVarinat:Ljava/lang/String;

.field private mObs:Lmiui/os/IMiuiInitObserver;

.field final synthetic this$0:Lcom/miui/server/MiuiInitServer;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V
    .registers 4
    .param p2, "custVariant"    # Ljava/lang/String;
    .param p3, "obs"    # Lmiui/os/IMiuiInitObserver;

    .line 103
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mCustVarinat:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    .line 106
    return-void
.end method

.method private importCustProperties(Ljava/io/File;Z)V
    .registers 10
    .param p1, "custProp"    # Ljava/io/File;
    .param p2, "isTimezoneAuto"    # Z

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 206
    :try_start_6
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 207
    .local v0, "fileReader":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 208
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 209
    .local v2, "line":Ljava/lang/String;
    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_59

    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 211
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 212
    goto :goto_11

    .line 214
    :cond_26
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "ss":[Ljava/lang/String;
    if-eqz v3, :cond_11

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_33

    .line 216
    goto :goto_11

    .line 219
    :cond_33
    const-string/jumbo v4, "persist.sys.timezone"

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    if-eqz p2, :cond_50

    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->isDeviceNotInProvision()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 220
    const-string v4, "MiuiInitServer"

    const-string/jumbo v5, "persist.sys.timezone will not be changed when AUTO_TIME_ZONE is open!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 222
    :cond_50
    aget-object v4, v3, v5

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v3    # "ss":[Ljava/lang/String;
    :goto_58
    goto :goto_11

    .line 225
    :cond_59
    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->pokeSystemProperties()V

    .line 226
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 227
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_62} :catch_63

    .line 229
    .end local v0    # "fileReader":Ljava/io/FileReader;
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_64

    .line 228
    :catch_63
    move-exception v0

    .line 231
    :cond_64
    :goto_64
    return-void
.end method

.method private initCustEnvironment(Ljava/lang/String;)Z
    .registers 6
    .param p1, "custVariant"    # Ljava/lang/String;

    .line 164
    invoke-static {p1}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, "custVariantDir":Ljava/io/File;
    if-nez v0, :cond_b

    .line 167
    const/4 v1, 0x0

    return v1

    .line 176
    :cond_b
    new-instance v1, Ljava/io/File;

    const-string v2, "cust.prop"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->isTimeZoneAuto()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->importCustProperties(Ljava/io/File;Z)V

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->saveCustVariantToFile(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 185
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 187
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 189
    .local v2, "wM":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 194
    .end local v2    # "wM":Landroid/net/wifi/WifiManager;
    :cond_4f
    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->installVanwardCustApps()V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private installVanwardCustApps()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->installVanwardCustApps(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method private isDeviceNotInProvision()Z
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    nop

    :cond_15
    return v2
.end method

.method private isTimeZoneAuto()Z
    .registers 6

    .line 151
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_11} :catch_16

    if-lez v1, :cond_15

    const/4 v0, 0x1

    nop

    :cond_15
    return v0

    .line 153
    :catch_16
    move-exception v1

    .line 154
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MiuiInitServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTO_TIME_ZONE can\'t found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0
.end method

.method private pokeSystemProperties()V
    .registers 12

    .line 236
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_48

    .line 239
    .local v0, "services":[Ljava/lang/String;
    nop

    .line 238
    nop

    .line 240
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_47

    aget-object v4, v0, v3

    .line 241
    .local v4, "service":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 242
    .local v5, "obj":Landroid/os/IBinder;
    if-eqz v5, :cond_44

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 245
    .local v6, "data":Landroid/os/Parcel;
    const v7, 0x5f535052

    const/4 v8, 0x0

    :try_start_1b
    invoke-interface {v5, v7, v6, v8, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 250
    :goto_1e
    goto :goto_41

    .line 247
    :catch_1f
    move-exception v7

    .line 248
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "MiuiInitServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Someone wrote a bad service \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' that doesn\'t like to be poked: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_41

    .line 246
    :catch_3f
    move-exception v7

    goto :goto_1e

    .line 251
    :goto_41
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 240
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "obj":Landroid/os/IBinder;
    .end local v6    # "data":Landroid/os/Parcel;
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 254
    :cond_47
    return-void

    .line 237
    .end local v0    # "services":[Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method private saveCustVariantToFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "custVariant"    # Ljava/lang/String;

    .line 257
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, "custVariantFile":Ljava/io/File;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 263
    :cond_14
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 264
    .local v1, "fileWriter":Ljava/io/FileWriter;
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 265
    .local v3, "bufferWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 267
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 268
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2c} :catch_2d

    .line 271
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .end local v3    # "bufferWriter":Ljava/io/BufferedWriter;
    goto :goto_31

    .line 269
    :catch_2d
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :goto_31
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mCustVarinat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->initCustEnvironment(Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    if-eqz v1, :cond_11

    .line 113
    :try_start_a
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    invoke-interface {v1, v0}, Lmiui/os/IMiuiInitObserver;->initDone(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 115
    goto :goto_11

    .line 114
    :catch_10
    move-exception v1

    .line 117
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    const/4 v2, 0x0

    # setter for: Lcom/miui/server/MiuiInitServer;->mDoing:Z
    invoke-static {v1, v2}, Lcom/miui/server/MiuiInitServer;->access$202(Lcom/miui/server/MiuiInitServer;Z)Z

    .line 129
    :try_start_17
    invoke-static {}, Lmiui/content/res/GlobalConfiguration;->get()Landroid/content/res/Configuration;

    move-result-object v1

    .line 130
    .local v1, "curConfig":Landroid/content/res/Configuration;
    invoke-static {v1}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    .line 131
    invoke-static {v1}, Lmiui/content/res/GlobalConfiguration;->update(Landroid/content/res/Configuration;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_27} :catch_28

    .line 134
    .end local v1    # "curConfig":Landroid/content/res/Configuration;
    goto :goto_2c

    .line 132
    :catch_28
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2c
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/server/EnableStateManager;->updateApplicationEnableState(Landroid/content/Context;)V

    .line 139
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.MIUI_INIT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "region"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    return-void
.end method
