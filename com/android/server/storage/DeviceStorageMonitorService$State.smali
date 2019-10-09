.class Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field private static final LEVEL_FULL:I = 0x3

.field private static final LEVEL_LOW:I = 0x2

.field private static final LEVEL_MEDIUM:I = 0x1

.field private static final LEVEL_NORMAL:I = 0x0

.field private static final LEVEL_UNKNOWN:I = -0x1


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 125
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 114
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>()V

    return-void
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 114
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(III)Z
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isMiuiEntering(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(III)Z
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(III)Z
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z

    move-result v0

    return v0
.end method

.method private static isEntering(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 135
    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isLeaving(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 152
    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isMiuiEntering(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 140
    if-lt p2, p0, :cond_9

    if-ne p1, p2, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 156
    packed-switch p0, :pswitch_data_18

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_8
    const-string v0, "FULL"

    return-object v0

    .line 161
    :pswitch_b
    const-string v0, "LOW"

    return-object v0

    .line 160
    :pswitch_e
    const-string v0, "MEDIUM"

    return-object v0

    .line 158
    :pswitch_11
    const-string v0, "NORMAL"

    return-object v0

    .line 157
    :pswitch_14
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
