.class public final synthetic Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;->INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/am/TaskRecord;

    check-cast p2, Lcom/android/server/am/TaskRecord;

    invoke-static {p1, p2}, Lcom/android/server/am/RecentTasks;->lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result p1

    return p1
.end method
