.class public final Lcom/android/server/location/GnssLocationProviderInjector;
.super Ljava/lang/Object;
.source "GnssLocationProviderInjector.java"


# static fields
.field public static FIRST_FIX:I

.field public static LOSE:I

.field public static RECOVER:I

.field public static START:I

.field public static STOP:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "GnssLocationProviderInjector"

    sput-object v0, Lcom/android/server/location/GnssLocationProviderInjector;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/android/server/location/GnssLocationProviderInjector;->START:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/android/server/location/GnssLocationProviderInjector;->STOP:I

    .line 13
    const/4 v0, 0x3

    sput v0, Lcom/android/server/location/GnssLocationProviderInjector;->FIRST_FIX:I

    .line 14
    const/4 v0, 0x4

    sput v0, Lcom/android/server/location/GnssLocationProviderInjector;->LOSE:I

    .line 15
    const/4 v0, 0x5

    sput v0, Lcom/android/server/location/GnssLocationProviderInjector;->RECOVER:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static deliverIntent(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # I

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .local v0, "toNpsReceiver":Landroid/content/Intent;
    const-string v1, "com.xiaomi.bsp.gps.nps.GetEvent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v1, "com.xiaomi.bsp.gps.nps.NewEvent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string v1, "com.xiaomi.bsp.gps.nps"

    const-string v2, "com.xiaomi.bsp.gps.nps.GnssEventReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static notifyState(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # I

    .line 21
    sget-object v0, Lcom/android/server/location/GnssLocationProviderInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps now on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProviderInjector;->deliverIntent(Landroid/content/Context;I)V

    .line 23
    return-void
.end method
