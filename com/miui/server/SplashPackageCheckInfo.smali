.class public Lcom/miui/server/SplashPackageCheckInfo;
.super Ljava/lang/Object;
.source "SplashPackageCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE:J = -0x1L


# instance fields
.field private mEndCheckTime:J

.field private mSplashPackageName:Ljava/lang/String;

.field private mStartCheckTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/miui/server/SplashPackageCheckInfo$1;

    invoke-direct {v0}, Lcom/miui/server/SplashPackageCheckInfo$1;-><init>()V

    sput-object v0, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/server/SplashPackageCheckInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/server/SplashPackageCheckInfo$1;

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/server/SplashPackageCheckInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "splashPackageName"    # Ljava/lang/String;
    .param p2, "startCheckTime"    # J
    .param p4, "endCheckTime"    # J

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    .line 26
    iput-wide p4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    .line 27
    return-void
.end method

.method private static getDateString(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"    # J

    .line 81
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 82
    const-string v0, "IGNORE"

    return-object v0

    .line 85
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 86
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    return-object v1

    .line 87
    .end local v0    # "date":Ljava/util/Date;
    :catch_1b
    move-exception v0

    .line 90
    const-string v0, "ERROR"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getSplashPackageName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .registers 5

    .line 69
    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public matchTime()Z
    .registers 7

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1f

    :cond_12
    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v2, 0x1

    :goto_22
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashPackageCheckInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    .line 75
    invoke-static {v1, v2}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    .line 76
    invoke-static {v1, v2}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 36
    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    return-void
.end method
