.class Lcom/miui/server/SecurityManagerService$PackageSetting;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageSetting"
.end annotation


# instance fields
.field accessControl:Z

.field childrenControl:Z

.field isPrivacyApp:Z

.field maskNotification:Z

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 1375
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    .line 1377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1378
    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1379
    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    .line 1380
    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    .line 1381
    return-void
.end method
