.class public final Lcom/android/server/os/DeviceIdentifiersPolicyService;
.super Lcom/android/server/SystemService;
.source "DeviceIdentifiersPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .line 43
    const-string v0, "device_identifiers"

    new-instance v1, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/os/DeviceIdentifiersPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/os/DeviceIdentifiersPolicyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    return-void
.end method
