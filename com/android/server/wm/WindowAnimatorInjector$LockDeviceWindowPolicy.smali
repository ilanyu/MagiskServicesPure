.class final enum Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;
.super Ljava/lang/Enum;
.source "WindowAnimatorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimatorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LockDeviceWindowPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

.field public static final enum HIDE:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

.field public static final enum SHOW:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 97
    new-instance v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    const-string v1, "HIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->HIDE:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    new-instance v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    const-string v1, "SHOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->SHOW:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    sget-object v1, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->HIDE:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->SHOW:Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->$VALUES:[Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 96
    const-class v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;
    .registers 1

    .line 96
    sget-object v0, Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->$VALUES:[Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    invoke-virtual {v0}, [Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/WindowAnimatorInjector$LockDeviceWindowPolicy;

    return-object v0
.end method
