.class final Lcom/android/server/BatteryService$BatteryUEventObserver;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryUEventObserver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 260
    const-string v0, "POWER_SUPPLY_HVDCP3_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 261
    const-string v0, "POWER_SUPPLY_HVDCP3_TYPE"

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "hvdcpType":I
    iget-object v1, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastHvdcpType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v0, v1, :cond_45

    .line 264
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HVDCP type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Last HVDCP type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    .line 265
    # getter for: Lcom/android/server/BatteryService;->mLastHvdcpType:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->updateHvdcpType(I)V
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;I)V

    .line 270
    .end local v0    # "hvdcpType":I
    :cond_45
    const-string v0, "POWER_SUPPLY_CONNECTOR_HEALTH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 272
    const-string v0, "Overheat"

    const-string v1, "POWER_SUPPLY_CONNECTOR_HEALTH"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 273
    .local v0, "connectorHealth":I
    iget-object v1, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastUsbConnectorHealth:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v0, v1, :cond_8d

    .line 274
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usb connector health trigger usbconnectorHealth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLastUsbConnectorHealth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    .line 276
    # getter for: Lcom/android/server/BatteryService;->mLastUsbConnectorHealth:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/android/server/BatteryService$BatteryUEventObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->updateUsbConnectorHealth(I)V
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;I)V

    .line 280
    .end local v0    # "connectorHealth":I
    :cond_8d
    return-void
.end method
