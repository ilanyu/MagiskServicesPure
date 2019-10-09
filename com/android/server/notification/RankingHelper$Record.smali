.class Lcom/android/server/notification/RankingHelper$Record;
.super Ljava/lang/Object;
.source "RankingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# static fields
.field static UNKNOWN_UID:I


# instance fields
.field channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field importance:I

.field lockedAppFields:I

.field pkg:Ljava/lang/String;

.field priority:I

.field showBadge:Z

.field uid:I

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1523
    const/16 v0, -0x2710

    sput v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1526
    sget v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 1527
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 1528
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 1529
    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 1530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 1531
    iput v1, p0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 1535
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    .line 1537
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/RankingHelper$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/notification/RankingHelper$1;

    .line 1522
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper$Record;-><init>()V

    return-void
.end method
