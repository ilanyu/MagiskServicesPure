.class final Lcom/android/server/AppOpsService$ChangeRec;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChangeRec"
.end annotation


# instance fields
.field final op:I

.field final pkg:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "_op"    # I
    .param p2, "_uid"    # I
    .param p3, "_pkg"    # Ljava/lang/String;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput p1, p0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    .line 1261
    iput p2, p0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    .line 1262
    iput-object p3, p0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1263
    return-void
.end method
