.class public final synthetic Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/AppOpsService$ClientRestrictionState;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;->f$0:Lcom/android/server/AppOpsService$ClientRestrictionState;

    iput p2, p0, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;->f$0:Lcom/android/server/AppOpsService$ClientRestrictionState;

    iget v1, p0, Lcom/android/server/-$$Lambda$AppOpsService$ClientRestrictionState$1l-YeBkF_Y04gZU4mqxsyXZNtwY;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->lambda$binderDied$0(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    return-void
.end method
