.class Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingObserver"
.end annotation


# instance fields
.field private final URI_ANR_PACKAGES:Landroid/net/Uri;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 178
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 172
    const-string v0, "anr_pkgs"

    .line 173
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->URI_ANR_PACKAGES:Landroid/net/Uri;

    .line 179
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->context:Landroid/content/Context;

    .line 180
    return-void
.end method

.method private dump()V
    .registers 5

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const/4 v1, 0x0

    .line 220
    .local v1, "i":I
    :goto_b
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 221
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 223
    .end local v1    # "i":I
    :cond_2a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "ActivityManagerServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sPackageList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private update()V
    .registers 7

    .line 197
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anr_pkgs"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "packagesString":Ljava/lang/String;
    if-eqz v0, :cond_58

    .line 201
    :try_start_e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "jsonArray":Lorg/json/JSONArray;
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000()Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_18} :catch_40

    .line 203
    :try_start_18
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 204
    const/4 v3, 0x0

    .line 204
    .local v3, "i":I
    :goto_20
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 205
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 207
    .end local v3    # "i":I
    :cond_38
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->dump()V

    .line 208
    monitor-exit v2

    .line 211
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_58

    .line 208
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v3
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_40} :catch_40

    .line 209
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_40
    move-exception v1

    .line 210
    .local v1, "jsonException":Lorg/json/JSONException;
    const-string v2, "ActivityManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "json error while parse anr packageNames string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1    # "jsonException":Lorg/json/JSONException;
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->URI_ANR_PACKAGES:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->update()V

    .line 194
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 184
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->URI_ANR_PACKAGES:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->update()V

    .line 188
    :cond_e
    return-void
.end method
