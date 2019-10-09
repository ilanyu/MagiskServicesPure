.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;

    invoke-direct {v0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;-><init>()V

    sput-object v0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;->INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$izMbpkX9bmZwnjh3sH07yuoJPNY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$shutdown$1()V

    return-void
.end method
