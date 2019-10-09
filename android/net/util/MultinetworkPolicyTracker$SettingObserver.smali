.class Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;
.super Landroid/database/ContentObserver;
.source "MultinetworkPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/MultinetworkPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/MultinetworkPolicyTracker;


# direct methods
.method public constructor <init>(Landroid/net/util/MultinetworkPolicyTracker;)V
    .registers 2

    .line 178
    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    .line 179
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 184
    # getter for: Landroid/net/util/MultinetworkPolicyTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/net/util/MultinetworkPolicyTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    # getter for: Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;
    invoke-static {v0}, Landroid/net/util/MultinetworkPolicyTracker;->access$100(Landroid/net/util/MultinetworkPolicyTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 190
    # getter for: Landroid/net/util/MultinetworkPolicyTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/net/util/MultinetworkPolicyTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected settings observation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_24
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->reevaluate()V

    .line 193
    return-void
.end method
