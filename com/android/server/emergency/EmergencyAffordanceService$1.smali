.class Lcom/android/server/emergency/EmergencyAffordanceService$1;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 75
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 81
    :cond_d
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 3
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 85
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 88
    :cond_d
    return-void
.end method
