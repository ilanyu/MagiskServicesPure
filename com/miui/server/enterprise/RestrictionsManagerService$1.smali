.class Lcom/miui/server/enterprise/RestrictionsManagerService$1;
.super Landroid/database/ContentObserver;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/RestrictionsManagerService;->startWatchLocationRestriction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/enterprise/RestrictionsManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 106
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    .line 107
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    # getter for: Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/enterprise/RestrictionsManagerService;->access$000(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gps_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 109
    .local v1, "mode":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_30

    .line 110
    const-string v2, "Enterprise-restric"

    const-string v3, "FORCE_OPEN GPS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    # getter for: Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->access$000(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4a

    .line 113
    :cond_30
    if-nez v1, :cond_4a

    .line 114
    const-string v2, "Enterprise-restric"

    const-string v3, "Close GPS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    # getter for: Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->access$000(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 118
    :cond_4a
    :goto_4a
    return-void
.end method
