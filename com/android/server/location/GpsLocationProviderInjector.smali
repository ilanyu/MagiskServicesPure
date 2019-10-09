.class Lcom/android/server/location/GpsLocationProviderInjector;
.super Ljava/lang/Object;
.source "GpsLocationProviderInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendUidExtra(Landroid/os/WorkSource;ZLandroid/content/Intent;)V
    .registers 6
    .param p0, "clientSource"    # Landroid/os/WorkSource;
    .param p1, "navigating"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 17
    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 18
    const-string v0, "android.intent.extra.UID"

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p0, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :cond_1b
    return-void
.end method
