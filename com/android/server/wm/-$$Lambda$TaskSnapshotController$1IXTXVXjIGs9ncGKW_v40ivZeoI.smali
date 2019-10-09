.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$snapshotTask$0(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
