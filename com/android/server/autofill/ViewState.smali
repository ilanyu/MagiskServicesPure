.class final Lcom/android/server/autofill/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ViewState$Listener;
    }
.end annotation


# static fields
.field public static final STATE_AUTOFILLED:I = 0x4

.field public static final STATE_AUTOFILL_FAILED:I = 0x400

.field public static final STATE_CHANGED:I = 0x8

.field public static final STATE_FILLABLE:I = 0x2

.field public static final STATE_IGNORED:I = 0x80

.field public static final STATE_INITIAL:I = 0x1

.field public static final STATE_RESTARTED_SESSION:I = 0x100

.field public static final STATE_STARTED_PARTITION:I = 0x20

.field public static final STATE_STARTED_SESSION:I = 0x10

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_URL_BAR:I = 0x200

.field public static final STATE_WAITING_DATASET_AUTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "ViewState"


# instance fields
.field public final id:Landroid/view/autofill/AutofillId;

.field private mAutofilledValue:Landroid/view/autofill/AutofillValue;

.field private mCurrentValue:Landroid/view/autofill/AutofillValue;

.field private mDatasetId:Ljava/lang/String;

.field private final mListener:Lcom/android/server/autofill/ViewState$Listener;

.field private mResponse:Landroid/service/autofill/FillResponse;

.field private mSanitizedValue:Landroid/view/autofill/AutofillValue;

.field private final mSession:Lcom/android/server/autofill/Session;

.field private mState:I

.field private mVirtualBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/autofill/Session;
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "listener"    # Lcom/android/server/autofill/ViewState$Listener;
    .param p4, "state"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mSession:Lcom/android/server/autofill/Session;

    .line 90
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 91
    iput-object p3, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 92
    iput p4, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 93
    return-void
.end method

.method static getStateAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 155
    const-class v0, Lcom/android/server/autofill/ViewState;

    const-string v1, "STATE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "datasetId:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :cond_1e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    if-eqz v0, :cond_44

    .line 240
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "response id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 242
    :cond_44
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_55

    .line 243
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "currentValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    :cond_55
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_66

    .line 246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autofilledValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    :cond_66
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_78

    .line 249
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sanitizedValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 251
    :cond_78
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8a

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "virtualBounds:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 254
    :cond_8a
    return-void
.end method

.method getAutofilledValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method getCurrentValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method getDatasetId()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method getResponse()Landroid/service/autofill/FillResponse;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    return-object v0
.end method

.method getSanitizedValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method getServiceName()Ljava/lang/CharSequence;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSession:Lcom/android/server/autofill/Session;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->getServiceName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getState()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    return v0
.end method

.method getStateAsString()Ljava/lang/String;
    .registers 2

    .line 151
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    invoke-static {v0}, Lcom/android/server/autofill/ViewState;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVirtualBounds()Landroid/graphics/Rect;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method maybeCallOnFillReady(I)V
    .registers 6
    .param p1, "flags"    # I

    .line 199
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_33

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    .line 200
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_32

    const-string v0, "ViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring UI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_32
    return-void

    .line 204
    :cond_33
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    if-eqz v0, :cond_52

    .line 205
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 206
    :cond_47
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    iget-object v2, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ViewState$Listener;->onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    .line 209
    :cond_52
    return-void
.end method

.method resetState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 167
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 168
    return-void
.end method

.method setAutofilledValue(Landroid/view/autofill/AutofillValue;)V
    .registers 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 121
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 122
    return-void
.end method

.method setCurrentValue(Landroid/view/autofill/AutofillValue;)V
    .registers 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 112
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 113
    return-void
.end method

.method setDatasetId(Ljava/lang/String;)V
    .registers 2
    .param p1, "datasetId"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method setResponse(Landroid/service/autofill/FillResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 139
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mResponse:Landroid/service/autofill/FillResponse;

    .line 140
    return-void
.end method

.method setSanitizedValue(Landroid/view/autofill/AutofillValue;)V
    .registers 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 130
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 131
    return-void
.end method

.method setState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 159
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 160
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    goto :goto_d

    .line 162
    :cond_8
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 164
    :goto_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewState: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 215
    const-string v1, "datasetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1b
    const-string/jumbo v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_36

    .line 219
    const-string v1, "currentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    :cond_36
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_44

    .line 222
    const-string v1, "autofilledValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    :cond_44
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_53

    .line 225
    const-string/jumbo v1, "sanitizedValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    :cond_53
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_62

    .line 228
    const-string/jumbo v1, "virtualBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "autofillValue"    # Landroid/view/autofill/AutofillValue;
    .param p2, "virtualBounds"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .line 183
    if-eqz p1, :cond_4

    .line 184
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 186
    :cond_4
    if-eqz p2, :cond_8

    .line 187
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 190
    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 191
    return-void
.end method
