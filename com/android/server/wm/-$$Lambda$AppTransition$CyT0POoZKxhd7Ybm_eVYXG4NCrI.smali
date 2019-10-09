.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppTransition;

.field private final synthetic f$1:Landroid/view/IAppTransitionAnimationSpecsFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;->f$0:Lcom/android/server/wm/AppTransition;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;->f$1:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;->f$0:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;->f$1:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-static {v0, v1}, Lcom/android/server/wm/AppTransition;->lambda$fetchAppTransitionSpecsFromFuture$0(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    return-void
.end method
