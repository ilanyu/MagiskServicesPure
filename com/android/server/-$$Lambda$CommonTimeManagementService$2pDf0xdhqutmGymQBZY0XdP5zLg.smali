.class public final synthetic Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CommonTimeConfig$OnServerDiedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/CommonTimeManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CommonTimeManagementService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;->f$0:Lcom/android/server/CommonTimeManagementService;

    return-void
.end method


# virtual methods
.method public final onServerDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;->f$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->lambda$new$0(Lcom/android/server/CommonTimeManagementService;)V

    return-void
.end method
