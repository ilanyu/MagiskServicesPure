.class public Lcom/android/server/notification/NotificationVibratorController;
.super Ljava/lang/Object;
.source "NotificationVibratorController.java"


# static fields
.field private static final EFFECT_KEY_POPUP_LIGHT:Ljava/lang/String; = "sys.haptic.popup.light"

.field private static final LINEAR_MOTOR:Ljava/lang/String; = "linear"

.field private static final SYS_HAPTIC_MOTOR:Ljava/lang/String; = "sys.haptic.motor"

.field private static final motorName:Ljava/lang/String;

.field private static final popup_light:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    const-string/jumbo v0, "sys.haptic.popup.light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationVibratorController;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationVibratorController;->popup_light:[J

    .line 15
    const-string/jumbo v0, "sys.haptic.motor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationVibratorController;->motorName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeNotificationVibrator(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 19
    invoke-static {}, Lcom/android/server/notification/NotificationVibratorController;->isSupportLinearMotorVibrate()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 20
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/VibrationEffect;->get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 21
    .local v0, "sound_vibrationEffect":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_11

    .line 22
    return-object v0

    .line 24
    :cond_11
    sget-object v1, Lcom/android/server/notification/NotificationVibratorController;->popup_light:[J

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/server/notification/NotificationVibratorController;->popup_light:[J

    array-length v1, v1

    if-lez v1, :cond_32

    .line 25
    sget-object v1, Lcom/android/server/notification/NotificationVibratorController;->popup_light:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    long-to-int v1, v1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 26
    .local v1, "vibrationEffect":Landroid/os/VibrationEffect;
    if-eqz v1, :cond_32

    instance-of v2, v1, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_32

    .line 27
    move-object v2, v1

    check-cast v2, Landroid/os/VibrationEffect$Prebaked;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 28
    return-object v1

    .line 32
    .end local v0    # "sound_vibrationEffect":Landroid/os/VibrationEffect;
    .end local v1    # "vibrationEffect":Landroid/os/VibrationEffect;
    :cond_32
    return-object p2
.end method

.method private static isSupportLinearMotorVibrate()Z
    .registers 2

    .line 36
    const-string/jumbo v0, "linear"

    sget-object v1, Lcom/android/server/notification/NotificationVibratorController;->motorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static stringToLongArray(Ljava/lang/String;)[J
    .registers 7
    .param p0, "pattern"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "splitStr":[Ljava/lang/String;
    array-length v1, v0

    .line 44
    .local v1, "los":I
    new-array v2, v1, [J

    .line 45
    .local v2, "returnByte":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_23

    .line 46
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 48
    .end local v3    # "i":I
    :cond_23
    return-object v2
.end method
