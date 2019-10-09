.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;

    invoke-direct {v0}, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;-><init>()V

    sput-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/content/SyncOperation;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z

    move-result p1

    return p1
.end method
