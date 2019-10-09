.class final Lcom/android/server/InputMethodManagerService$StartInputHistory;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartInputHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY_SIZE_FOR_HIGH_RAM_DEVICE:I = 0x10

.field private static final ENTRY_SIZE_FOR_LOW_RAM_DEVICE:I = 0x5


# instance fields
.field private final mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    invoke-static {}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->getEntrySize()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/InputMethodManagerService$1;

    .line 694
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$StartInputHistory;-><init>()V

    return-void
.end method

.method private static getEntrySize()I
    .registers 1

    .line 712
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 713
    const/4 v0, 0x5

    return v0

    .line 715
    :cond_8
    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method addEntry(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/InputMethodManagerService$StartInputInfo;

    .line 779
    iget v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 780
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    aget-object v1, v1, v0

    if-nez v1, :cond_12

    .line 781
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    new-instance v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    invoke-direct {v2, p1}, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;-><init>(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    aput-object v2, v1, v0

    goto :goto_19

    .line 783
    :cond_12
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    .line 785
    :goto_19
    iget v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 786
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 789
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 792
    .local v0, "dataFormat":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 792
    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    array-length v2, v2

    if-ge v1, v2, :cond_15c

    .line 793
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    iget v3, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 794
    .local v2, "entry":Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;
    if-nez v2, :cond_1f

    .line 795
    goto/16 :goto_158

    .line 797
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartInput #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    .line 804
    invoke-static {v4}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restarting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 801
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imeToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " targetWin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] clientBindSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    invoke-static {v4}, Lcom/android/internal/view/InputMethodClient;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " inputType=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " imeOptions=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 821
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fieldId=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 822
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fieldName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " actionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " actionLabel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 820
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    .end local v2    # "entry":Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;
    :goto_158
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 827
    .end local v1    # "i":I
    :cond_15c
    return-void
.end method
