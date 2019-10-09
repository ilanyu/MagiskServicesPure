.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManagerConstants$qo5ldQVp10jCUY9aavBZDKP2k6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/content/SyncManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManagerConstants;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManagerConstants$qo5ldQVp10jCUY9aavBZDKP2k6Q;->f$0:Lcom/android/server/content/SyncManagerConstants;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManagerConstants$qo5ldQVp10jCUY9aavBZDKP2k6Q;->f$0:Lcom/android/server/content/SyncManagerConstants;

    invoke-static {v0}, Lcom/android/server/content/SyncManagerConstants;->lambda$start$0(Lcom/android/server/content/SyncManagerConstants;)V

    return-void
.end method
