.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;

    invoke-direct {v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$16;->lambda$run$0(I)Z

    move-result p1

    return p1
.end method
