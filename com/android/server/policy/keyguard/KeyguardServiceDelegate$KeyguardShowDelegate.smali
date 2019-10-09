.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardShowDelegate"
.end annotation


# instance fields
.field private mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mScreenOnDelay:J

.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    .registers 3
    .param p2, "drawnListener"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 107
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 109
    return-void
.end method


# virtual methods
.method public onDrawn()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    iget-wide v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mScreenOnDelay:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;->onDrawn(J)V

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mScreenOnDelay:J

    .line 121
    :cond_f
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const/16 v0, 0xff

    if-eq p1, v0, :cond_9

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 131
    :cond_9
    const-string v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mScreenOnDelay:J

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->onDrawn()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v0, 0x1

    return v0
.end method
