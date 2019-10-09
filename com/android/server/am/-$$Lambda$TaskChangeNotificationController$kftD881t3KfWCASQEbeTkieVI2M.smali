.class public final synthetic Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;->INSTANCE:Lcom/android/server/am/-$$Lambda$TaskChangeNotificationController$kftD881t3KfWCASQEbeTkieVI2M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/am/TaskChangeNotificationController;->lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method
