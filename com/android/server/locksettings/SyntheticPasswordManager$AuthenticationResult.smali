.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationResult"
.end annotation


# instance fields
.field public authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

.field public credentialType:I

.field public gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
