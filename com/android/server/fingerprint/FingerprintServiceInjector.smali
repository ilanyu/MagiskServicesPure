.class public Lcom/android/server/fingerprint/FingerprintServiceInjector;
.super Ljava/lang/Object;
.source "FingerprintServiceInjector.java"


# static fields
.field private static IS_RECORD_PERFORM:Z = false

.field private static IS_RECORD_SENSORINFO:Z = false

.field private static final RECORD_FAILED:I = 0x2

.field private static final RECORD_PERFORM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static sRecordFeature:I

.field private static sSdfTime:Ljava/text/SimpleDateFormat;

.field private static sStrBuf:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    .line 18
    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sSdfTime:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAcquiredInfo()V
    .registers 3

    .line 40
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    if-eqz v0, :cond_17

    .line 41
    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 42
    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_17
    return-void
.end method

.method private static initRecordFeature()V
    .registers 4

    .line 76
    sget v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_50

    .line 77
    const-string/jumbo v0, "type_mqs_finger_record"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    .line 78
    sget v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    .line 79
    sget v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_22

    move v1, v2

    nop

    :cond_22
    sput-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    .line 80
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sRecordFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_50
    return-void
.end method

.method private static isSensorInfo(II)Z
    .registers 4
    .param p0, "acquiredInfo"    # I
    .param p1, "vendorCode"    # I

    .line 66
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 67
    return v0

    .line 69
    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_14

    const/16 v1, 0x15

    if-eq p1, v1, :cond_13

    const/16 v1, 0x16

    if-eq p1, v1, :cond_13

    const/16 v1, 0x17

    if-ne p1, v1, :cond_14

    .line 70
    :cond_13
    return v0

    .line 72
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public static recordAcquiredInfo(II)V
    .registers 5
    .param p0, "acquiredInfo"    # I
    .param p1, "vendorCode"    # I

    .line 48
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    if-eqz v0, :cond_23

    invoke-static {p0, p1}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->isSensorInfo(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 49
    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    sget-object v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_23
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    if-ne p0, v0, :cond_54

    const/16 v0, 0x16

    if-ne p1, v0, :cond_54

    .line 54
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finger down, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/android/server/ScreenOnMonitor;->getInstance()Lcom/android/server/ScreenOnMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor;->recordTime(I)V

    .line 57
    :cond_54
    return-void
.end method

.method public static reportFingerEvent(Ljava/lang/String;I)V
    .registers 7
    .param p0, "packName"    # Ljava/lang/String;
    .param p1, "authen"    # I

    .line 23
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->initRecordFeature()V

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 26
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_SENSORINFO:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v2, :cond_28

    .line 27
    sget-object v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sStrBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 28
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->initAcquiredInfo()V

    .line 30
    :cond_28
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->sSdfTime:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V

    .line 34
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintServiceInjector;->IS_RECORD_PERFORM:Z

    if-eqz v1, :cond_73

    if-ne p1, v2, :cond_73

    .line 35
    invoke-static {}, Lcom/android/server/ScreenOnMonitor;->getInstance()Lcom/android/server/ScreenOnMonitor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/ScreenOnMonitor;->recordTime(I)V

    .line 37
    :cond_73
    return-void
.end method
