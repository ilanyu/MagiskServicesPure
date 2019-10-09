.class public Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
.super Ljava/lang/Object;
.source "CloudControlPreinstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CloudControlPreinstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninstallApp"
.end annotation


# instance fields
.field confId:I

.field custVariant:Ljava/lang/String;

.field offlineCount:I

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "custVariant"    # Ljava/lang/String;
    .param p3, "confId"    # I
    .param p4, "offlineCount"    # I

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->custVariant:Ljava/lang/String;

    .line 221
    iput p3, p0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->confId:I

    .line 222
    iput p4, p0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->offlineCount:I

    .line 223
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 227
    instance-of v0, p1, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 228
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 229
    .local v0, "app":Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->custVariant:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;->custVariant:Ljava/lang/String;

    .line 230
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    nop

    .line 229
    :cond_1e
    return v1

    .line 232
    .end local v0    # "app":Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;
    :cond_1f
    return v1
.end method
