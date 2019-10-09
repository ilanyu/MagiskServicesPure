.class final enum Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;
.super Ljava/lang/Enum;
.source "MiuiGestureRecentsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureRecentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

.field public static final enum STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

.field public static final enum STATUS_GO_RECENTS_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

.field public static final enum STATUS_RESTART_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 67
    new-instance v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    const-string v1, "STATUS_FINISH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    new-instance v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    const-string v1, "STATUS_GO_RECENTS_ANIMATING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_GO_RECENTS_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    new-instance v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    const-string v1, "STATUS_RESTART_ANIMATING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_RESTART_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_GO_RECENTS_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_RESTART_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->$VALUES:[Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->$VALUES:[Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    invoke-virtual {v0}, [Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    return-object v0
.end method
