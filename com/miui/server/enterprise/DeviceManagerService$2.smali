.class Lcom/miui/server/enterprise/DeviceManagerService$2;
.super Ljava/lang/Object;
.source "DeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/DeviceManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/DeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/enterprise/DeviceManagerService;

    .line 330
    iput-object p1, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->this$0:Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService$2;->this$0:Lcom/miui/server/enterprise/DeviceManagerService;

    # getter for: Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/miui/server/enterprise/DeviceManagerService;->access$000(Lcom/miui/server/enterprise/DeviceManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 334
    return-void
.end method
