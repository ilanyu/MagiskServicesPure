.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field private final synthetic f$1:Lcom/android/server/am/ActivityRecord;

.field private final synthetic f$2:Landroid/app/PictureInPictureParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;->f$1:Lcom/android/server/am/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;->f$2:Landroid/app/PictureInPictureParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;->f$1:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$nLON5M4YCRoJpSNB1Y_UERhbBKo;->f$2:Landroid/app/PictureInPictureParams;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->lambda$enterPictureInPictureMode$1(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    return-void
.end method
