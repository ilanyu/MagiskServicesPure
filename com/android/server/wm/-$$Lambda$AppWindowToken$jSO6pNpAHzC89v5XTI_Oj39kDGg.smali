.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$showAllWindowsLocked$2(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
