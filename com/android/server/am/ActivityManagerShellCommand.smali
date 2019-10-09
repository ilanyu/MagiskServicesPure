.class final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;,
        Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    }
.end annotation


# static fields
.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field private mActivityType:I

.field private mAgent:Ljava/lang/String;

.field private mAttachAgentDuringBind:Z

.field private mAutoStop:Z

.field private mDisplayId:I

.field final mDumping:Z

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field private mIsLockTask:Z

.field private mIsTaskOverlay:Z

.field final mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mStreaming:Z

.field private mTaskId:I

.field private mUserId:I

.field private mWaitOption:Z

.field private mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "dumping"    # Z

    .line 144
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 122
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 125
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 145
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 146
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 147
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 148
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 149
    return-void
.end method

.method static synthetic access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 108
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerShellCommand;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return p1
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 13
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "surfaceSize"    # [I
    .param p4, "contextAttribs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1883
    .local p5, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1884
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 1886
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_b

    .line 1887
    return-void

    .line 1891
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 1892
    .local v1, "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_17

    .line 1893
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1894
    return-void

    .line 1898
    :cond_17
    invoke-interface {p0, p1, v1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1901
    const/16 v2, 0x1f03

    invoke-static {v2}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 1902
    .local v2, "extensionList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1905
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    .line 1906
    .local v6, "extension":Ljava/lang/String;
    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1905
    .end local v6    # "extension":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1911
    :cond_38
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1912
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1913
    invoke-interface {p0, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1914
    return-void
.end method

.method private static argToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 1674
    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1675
    const/4 v0, 0x0

    return-object v0

    .line 1677
    :cond_a
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private bucketNameToBucketValue(Ljava/lang/String;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 2187
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2189
    const/16 v1, 0xa

    return v1

    .line 2190
    :cond_f
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2191
    const/16 v1, 0x14

    return v1

    .line 2192
    :cond_1b
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2193
    const/16 v1, 0x1e

    return v1

    .line 2194
    :cond_26
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2195
    const/16 v1, 0x28

    return v1

    .line 2196
    :cond_32
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2197
    const/16 v1, 0x32

    return v1

    .line 2200
    :cond_3e
    :try_start_3e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_42} :catch_43

    .line 2201
    .local v1, "bucket":I
    return v1

    .line 2202
    .end local v1    # "bucket":I
    :catch_43
    move-exception v1

    .line 2203
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2206
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;Z)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "dumping"    # Z

    .line 2821
    if-eqz p1, :cond_9a

    .line 2822
    const-string v0, "Activity manager dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    const-string v0, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    const-string v0, "  WHAT may be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    const-string v0, "    a[ctivities]: activity stack state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    const-string v0, "    r[recents]: recent activities state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    const-string v0, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    const-string v0, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    const-string v0, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    const-string v0, "    p[rocesses] [PACKAGE_NAME]: process state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    const-string v0, "    o[om]: out of memory management"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    const-string v0, "    perm[issions]: URI permission grant state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const-string v0, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    const-string v0, "    provider [COMP_SPEC]: provider client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    const-string v0, "    s[ervices] [COMP_SPEC ...]: service state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    const-string v0, "    as[sociations]: tracked app associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const-string v0, "    settings: currently applied config settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    const-string v0, "    service [COMP_SPEC]: service client-side state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    const-string v0, "    package [PACKAGE_NAME]: all state related to given package"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    const-string v0, "    all: dump all activities"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string v0, "    top: dump the top activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string v0, "  WHAT may also be a COMP_SPEC to dump activities."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const-string v0, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    const-string v0, "    a partial substring in a component name, a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    const-string v0, "    hex object identifier."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    const-string v0, "  -c: include client state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    const-string v0, "  -p: limit output to given package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    const-string v0, "  --checkin: output checkin format, resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    const-string v0, "  --C: output checkin format, not resetting data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v0, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_539

    .line 2853
    :cond_9a
    const-string v0, "Activity manager (activity) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    const-string v0, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    const-string v0, "          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    const-string v0, "          [--track-allocation] [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    const-string v0, "      Start an Activity.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    const-string v0, "      -D: enable debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    const-string v0, "      -N: enable native debugging"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    const-string v0, "      -W: wait for launch to complete"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    const-string v0, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    const-string v0, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    const-string v0, "          between samples (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    const-string v0, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    const-string v0, "          (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    const-string v0, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    const-string v0, "      --attach-agent <agent>: attach the given agent before binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const-string v0, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    const-string v0, "          the top activity will be finished."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const-string v0, "      -S: force stop the target app before starting the activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    const-string v0, "      --track-allocation: enable tracking of object allocations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    const-string v0, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    const-string v0, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    const-string v0, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    const-string v0, "      Start a Service.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2883
    const-string v0, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    const-string v0, "      Start a foreground Service.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2885
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    const-string v0, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    const-string v0, "      Stop a Service.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2890
    const-string v0, "          specified then run as the current user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    const-string v0, "  broadcast [--user <USER_ID> | all | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    const-string v0, "      Send a broadcast Intent.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    const-string v0, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    const-string v0, "          specified then send to all users."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    const-string v0, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    const-string v0, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    const-string v0, "          [--user <USER_ID> | current] [--no-hidden-api-checks]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const-string v0, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    const-string v0, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    const-string v0, "      is only one instrumentation.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    const-string v0, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    const-string v0, "          [-e perf true] to generate raw output for performance measurements."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    const-string v0, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    const-string v0, "      -p <FILE>: write profiling data to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    const-string v0, "      -m: Write output as protobuf to stdout (machine readable)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    const-string v0, "          readable). If path is not specified, default directory and file name will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    const-string v0, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    const-string v0, "      -w: wait for instrumentation to finish before returning.  Required for"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    const-string v0, "          test runners."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    const-string v0, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    const-string v0, "          current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const-string v0, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    const-string v0, "      --no-window-animation: turn off window animations while running."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    const-string v0, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    const-string v0, "          This assumes that the process supports the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2919
    const-string v0, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    const-string v0, "      Trace IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    const-string v0, "      start: start tracing IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    const-string v0, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    const-string v0, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    const-string v0, "  profile [start|stop] [--user <USER_ID> current] [--sampling INTERVAL]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    const-string v0, "          [--streaming] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    const-string v0, "      Start and stop profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    const-string v0, "        may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    const-string v0, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    const-string v0, "          specify user of process to profile; uses current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    const-string v0, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    const-string v0, "          between samples"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    const-string v0, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    const-string v0, "  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    const-string v0, "      Dump the heap of a process.  The given <PROCESS> argument may"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    const-string v0, "        be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    const-string v0, "      -n: dump native heap instead of managed heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    const-string v0, "      -g: force GC before dumping the heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    const-string v0, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    const-string v0, "          specify user of process to dump; uses current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    const-string v0, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    const-string v0, "      Set application <PACKAGE> to debug.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const-string v0, "      -w: wait for debugger when application starts"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    const-string v0, "      --persistent: retain this value"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    const-string v0, "  clear-debug-app"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const-string v0, "      Clear the previously set-debug-app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    const-string v0, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    const-string v0, "      Start monitoring pss size of <PROCESS>, if it is at or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    const-string v0, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    const-string v0, "  clear-watch-heap"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    const-string v0, "      Clear the previously set-watch-heap."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    const-string v0, "  bug-report [--progress | --telephony]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    const-string v0, "      Request bug report generation; will launch a notification"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    const-string v0, "        when done to select where it should be delivered. Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    const-string v0, "     --progress: will launch a notification right away to show its progress."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    const-string v0, "     --telephony: will dump only telephony sections."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    const-string v0, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    const-string v0, "      Completely stop the given application package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    const-string v0, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    const-string v0, "      Induce a VM crash in the specified package or process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    const-string v0, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const-string v0, "      Kill all background processes associated with the given application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2962
    const-string v0, "  kill-all"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    const-string v0, "      Kill all processes that are safe to kill (cached, etc)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2964
    const-string v0, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    const-string v0, "      If the given application\'s uid is in the background and waiting to"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    const-string v0, "      become idle (not allowing background services), do that now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    const-string v0, "  monitor [--gdb <port>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    const-string v0, "      Start monitoring for crashes or ANRs."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    const-string v0, "      --gdb: start gdbserv on the given port at crash/ANR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2970
    const-string v0, "  watch-uids [--oom <uid>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    const-string v0, "      Start watching for and reporting uid state changes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    const-string v0, "      --oom: specify a uid for which to report detailed change messages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    const-string v0, "  hang [--allow-restart]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    const-string v0, "      Hang the system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2975
    const-string v0, "      --allow-restart: allow watchdog to perform normal system restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    const-string v0, "  restart"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    const-string v0, "      Restart the user-space system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    const-string v0, "  idle-maintenance"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    const-string v0, "      Perform idle maintenance now."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    const-string v0, "  screen-compat [on|off] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    const-string v0, "      Control screen compatibility mode of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    const-string v0, "  package-importance <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    const-string v0, "      Print current importance of <PACKAGE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    const-string v0, "  to-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const-string v0, "      Print the given Intent specification as a URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    const-string v0, "  to-intent-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    const-string v0, "      Print the given Intent specification as an intent: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const-string v0, "  to-app-uri [INTENT]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    const-string v0, "      Print the given Intent specification as an android-app: URI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    const-string v0, "  switch-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    const-string v0, "      Switch to put USER_ID in the foreground, starting"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    const-string v0, "      execution of that user if it is currently stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    const-string v0, "  get-current-user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const-string v0, "      Returns id of the current foreground user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    const-string v0, "  start-user <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    const-string v0, "      Start USER_ID in background if it is currently stopped;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    const-string v0, "      use switch-user if you want to start the user in foreground"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v0, "  unlock-user <USER_ID> [TOKEN_HEX]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    const-string v0, "      Attempt to unlock the given user using the given authorization token."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v0, "  stop-user [-w] [-f] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v0, "      Stop execution of USER_ID, not allowing it to run any"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v0, "      code until a later explicit start or switch to it."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const-string v0, "      -w: wait for stop-user to complete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v0, "      -f: force stop even if there are related users that cannot be stopped."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v0, "  is-user-stopped <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    const-string v0, "      Returns whether <USER_ID> has been stopped or not."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v0, "  get-started-user-state <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    const-string v0, "      Gets the current state of the given started user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string v0, "  track-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string v0, "      Enable association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v0, "  untrack-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string v0, "      Disable and clear association tracking."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    const-string v0, "  get-uid-state <UID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const-string v0, "      Gets the process state of an app given its <UID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    const-string v0, "  attach-agent <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    const-string v0, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const-string v0, "  get-config [--days N] [--device] [--proto]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    const-string v0, "      Retrieve the configuration and any recent configurations of the device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    const-string v0, "      --days: also return last N days of configurations that have been seen."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    const-string v0, "      --device: also output global device configuration info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    const-string v0, "      --proto: return result as a proto; does not include --days info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    const-string v0, "  supports-multiwindow"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    const-string v0, "      Returns true if the device supports multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    const-string v0, "  supports-split-screen-multi-window"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    const-string v0, "      Returns true if the device supports split screen multiwindow."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string v0, "  suppress-resize-config-changes <true|false>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    const-string v0, "      Suppresses configuration changes due to user resizing an activity/task."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string v0, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    const-string v0, "      Sets the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    const-string v0, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    const-string v0, "      Returns the inactive state of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    const-string v0, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    const-string v0, "      Puts an app in the standby bucket."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string v0, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    const-string v0, "      Returns the standby bucket of an app."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    const-string v0, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const-string v0, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    const-string v0, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string v0, "  display [COMMAND] [...]: sub-commands for operating on displays."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    const-string v0, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string v0, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string v0, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string v0, "       start <DISPLAY_ID> <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string v0, "           Start a new activity on <DISPLAY_ID> using <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string v0, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string v0, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string v0, "           bottom (false) of <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string v0, "       resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v0, "           Change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string v0, "       resize-animated <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string v0, "           Same as resize, but allow animation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string v0, "       resize-docked-stack <LEFT,TOP,RIGHT,BOTTOM> [<TASK_LEFT,TASK_TOP,TASK_RIGHT,TASK_BOTTOM>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string v0, "           Change docked stack to <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string v0, "           and supplying temporary different task bounds indicated by"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string v0, "           <TASK_LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string v0, "       move-top-activity-to-pinned-stack: <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string v0, "           Moves the top activity from"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string v0, "           <STACK_ID> to the pinned stack using <LEFT,TOP,RIGHT,BOTTOM> for the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string v0, "           bounds of the pinned stack."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string v0, "       positiontask <TASK_ID> <STACK_ID> <POSITION>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string v0, "           Place <TASK_ID> in <STACK_ID> at <POSITION>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v0, "       list"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v0, "           List all of the activity stacks and their sizes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string v0, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-string v0, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v0, "       remove <STACK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string v0, "           Remove stack <STACK_ID>."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string v0, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string v0, "       lock <TASK_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string v0, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string v0, "       lock stop"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string v0, "           End the current task lock."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string v0, "       resizeable <TASK_ID> [0|1|2|3]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string v0, "           Change resizeable mode of <TASK_ID> to one of the following:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string v0, "           0: unresizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string v0, "           1: crop_windows"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string v0, "           2: resizeable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string v0, "           3: resizeable_and_pipable"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string v0, "       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string v0, "           Makes sure <TASK_ID> is in a stack with the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string v0, "           Forces the task to be resizeable and creates a stack if no existing stack"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string v0, "           has the specified bounds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string v0, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string v0, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string v0, "      without restarting any processes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string v0, "  write"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    const-string v0, "      Write all pending state to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3089
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3091
    :goto_539
    return-void
.end method

.method private getBounds()Landroid/graphics/Rect;
    .registers 13

    .line 2396
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2397
    .local v0, "leftStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2398
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2399
    .local v2, "topStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2400
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2401
    .local v4, "rightStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2402
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 2403
    .local v6, "bottomStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2404
    .local v7, "bottom":I
    const/4 v8, 0x0

    if-gez v1, :cond_3c

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad left arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2406
    return-object v8

    .line 2408
    :cond_3c
    if-gez v3, :cond_57

    .line 2409
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad top arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2410
    return-object v8

    .line 2412
    :cond_57
    if-gtz v5, :cond_72

    .line 2413
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad right arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2414
    return-object v8

    .line 2416
    :cond_72
    if-gtz v7, :cond_8d

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad bottom arg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    return-object v8

    .line 2420
    :cond_8d
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .registers 16
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .line 1821
    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    .line 1823
    .local v0, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1824
    .local v8, "now":J
    mul-int/lit8 v1, p1, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    sub-long v3, v8, v1

    .line 1827
    .local v3, "nDaysAgo":J
    const/4 v2, 0x4

    :try_start_1b
    const-string v7, "com.android.shell"

    move-object v1, v0

    move-wide v5, v8

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1829
    .local v1, "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-nez v1, :cond_2a

    .line 1830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1833
    :cond_2a
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1834
    .local v2, "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 1835
    .local v5, "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1836
    .local v6, "configStatsListSize":I
    const/4 v7, 0x0

    .line 1836
    .local v7, "i":I
    :goto_38
    if-ge v7, v6, :cond_74

    .line 1837
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/ConfigurationStats;

    .line 1838
    .local v10, "stats":Landroid/app/usage/ConfigurationStats;
    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 1839
    .local v11, "indexOfKey":I
    if-gez v11, :cond_5a

    .line 1840
    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 1842
    :cond_5a
    nop

    .line 1843
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1842
    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .end local v10    # "stats":Landroid/app/usage/ConfigurationStats;
    .end local v11    # "indexOfKey":I
    :goto_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 1847
    .end local v7    # "i":I
    :cond_74
    new-instance v7, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v7, p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 1854
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1855
    .local v10, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1856
    invoke-static {v10, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_8c} :catch_8d

    .line 1857
    return-object v10

    .line 1859
    .end local v1    # "configStatsSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    .end local v2    # "recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    .end local v5    # "configStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    .end local v6    # "configStatsListSize":I
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/res/Configuration;>;"
    .end local v10    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/Configuration;>;"
    :catch_8d
    move-exception v1

    .line 1860
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2803
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_f

    .line 2804
    const-string v1, "Error: Activity manager has no configuration"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    const/4 v1, 0x0

    return-object v1

    .line 2808
    :cond_f
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2809
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2811
    new-instance v2, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v2
.end method

.method public static synthetic lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 4
    .param p0, "o1"    # Landroid/content/pm/FeatureInfo;
    .param p1, "o2"    # Landroid/content/pm/FeatureInfo;

    .line 2073
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2074
    :cond_8
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, -0x1

    return v0

    .line 2075
    :cond_e
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 2076
    :cond_14
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .registers 4
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 291
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 292
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 293
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 295
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 296
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 297
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 298
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 299
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 300
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 301
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 302
    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 303
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 304
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 306
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static removeWallOption()V
    .registers 3

    .line 743
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_21

    const-string v1, "-Xprofile:wallclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 745
    const-string v1, "-Xprofile:wallclock"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 747
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_21
    return-void
.end method

.method private runProfile(Ljava/io/PrintWriter;)I
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 753
    .local v2, "err":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 754
    .local v0, "profileFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 755
    .local v3, "start":Z
    const/4 v4, 0x0

    .line 756
    .local v4, "wall":Z
    const/4 v5, -0x2

    .line 757
    .local v5, "userId":I
    const/4 v12, 0x0

    .line 758
    .local v12, "profileType":I
    const/4 v13, 0x0

    iput v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 759
    iput-boolean v13, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 761
    const/4 v6, 0x0

    .line 763
    .local v6, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "cmd":Ljava/lang/String;
    const-string/jumbo v8, "start"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v14, -0x1

    if-eqz v8, :cond_81

    .line 766
    const/4 v3, 0x1

    .line 768
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 768
    .local v9, "opt":Ljava/lang/String;
    if-eqz v8, :cond_76

    .line 769
    const-string v8, "--user"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_20

    .line 771
    :cond_38
    const-string v8, "--wall"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 772
    const/4 v4, 0x1

    goto :goto_20

    .line 773
    :cond_42
    const-string v8, "--streaming"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 774
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_20

    .line 775
    :cond_4e
    const-string v8, "--sampling"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_20

    .line 778
    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unknown option: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    return v14

    .line 782
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 783
    .end local v9    # "opt":Ljava/lang/String;
    nop

    .line 805
    .end local v6    # "process":Ljava/lang/String;
    .end local v7    # "cmd":Ljava/lang/String;
    .local v3, "process":Ljava/lang/String;
    .local v4, "cmd":Ljava/lang/String;
    .local v15, "start":Z
    .local v16, "wall":Z
    :goto_7b
    move v15, v3

    move/from16 v16, v4

    move-object v3, v6

    move-object v4, v7

    goto :goto_d6

    .line 783
    .end local v15    # "start":Z
    .end local v16    # "wall":Z
    .local v3, "start":Z
    .local v4, "wall":Z
    .restart local v6    # "process":Ljava/lang/String;
    .restart local v7    # "cmd":Ljava/lang/String;
    :cond_81
    const-string/jumbo v8, "stop"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 785
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 785
    .restart local v9    # "opt":Ljava/lang/String;
    if-eqz v8, :cond_b7

    .line 786
    const-string v8, "--user"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_8a

    .line 789
    :cond_a2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unknown option: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    return v14

    .line 793
    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 794
    .end local v9    # "opt":Ljava/lang/String;
    goto :goto_7b

    .line 796
    :cond_bc
    move-object v6, v7

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 798
    const-string/jumbo v8, "start"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 799
    const/4 v3, 0x1

    goto :goto_7b

    .line 800
    :cond_cc
    const-string/jumbo v8, "stop"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15f

    goto :goto_7b

    .line 805
    .end local v6    # "process":Ljava/lang/String;
    .end local v7    # "cmd":Ljava/lang/String;
    .local v3, "process":Ljava/lang/String;
    .local v4, "cmd":Ljava/lang/String;
    .restart local v15    # "start":Z
    .restart local v16    # "wall":Z
    :goto_d6
    if-ne v5, v14, :cond_de

    .line 806
    const-string v6, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    return v14

    .line 810
    :cond_de
    const/4 v6, 0x0

    .line 811
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .line 813
    .local v7, "profilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v15, :cond_10a

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 815
    const-string/jumbo v8, "w"

    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 816
    if-nez v6, :cond_f0

    .line 817
    return v14

    .line 819
    :cond_f0
    new-instance v8, Landroid/app/ProfilerInfo;

    iget v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    const/16 v21, 0x0

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v9

    move/from16 v22, v10

    invoke-direct/range {v17 .. v24}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v7, v8

    .line 824
    .end local v0    # "profileFile":Ljava/lang/String;
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v17, "profileFile":Ljava/lang/String;
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_10a
    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    if-eqz v16, :cond_135

    .line 826
    :try_start_112
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_122

    const-string v6, "-Xprofile:wallclock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_132

    .line 828
    :cond_122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -Xprofile:wallclock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .end local v0    # "props":Ljava/lang/String;
    :cond_132
    goto :goto_135

    .line 840
    :catchall_133
    move-exception v0

    goto :goto_15e

    .line 834
    :cond_135
    :goto_135
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v3

    move v8, v5

    move v9, v15

    move-object/from16 v10, v19

    move v11, v12

    invoke-interface/range {v6 .. v11}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 835
    const/16 v16, 0x0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROFILE FAILED on process "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_112 .. :try_end_159} :catchall_133

    .line 837
    nop

    .line 840
    nop

    .line 837
    return v14

    .line 840
    :cond_15c
    nop

    .line 844
    return v13

    .line 840
    :goto_15e
    throw v0

    .line 801
    .end local v15    # "start":Z
    .end local v16    # "wall":Z
    .end local v17    # "profileFile":Ljava/lang/String;
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profileFile":Ljava/lang/String;
    .local v3, "start":Z
    .local v4, "wall":Z
    .local v6, "process":Ljava/lang/String;
    .local v7, "cmd":Ljava/lang/String;
    :cond_15f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profile command "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/hardware/display/DisplayManager;)V
    .registers 27
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;
    .param p5, "config"    # Landroid/content/res/Configuration;
    .param p6, "dm"    # Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1997
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    .line 1998
    .local v3, "stableSize":Landroid/graphics/Point;
    const-wide/16 v4, -0x1

    .line 1999
    .local v4, "token":J
    if-eqz v1, :cond_30

    .line 2000
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2001
    const-wide v6, 0x10d00000001L

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2002
    const-wide v6, 0x10d00000002L

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2003
    const-wide v6, 0x10d00000003L

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2006
    :cond_30
    if-eqz v2, :cond_53

    .line 2007
    const-string/jumbo v6, "stable-width-px: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2008
    const-string/jumbo v6, "stable-height-px: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2009
    const-string/jumbo v6, "stable-density-dpi: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 2012
    :cond_53
    new-instance v6, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v6}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2013
    .local v6, "memreader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2014
    iget-object v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/KeyguardManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    .line 2015
    .local v7, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_9d

    .line 2016
    const-wide v8, 0x10400000004L

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2017
    const-wide v8, 0x10800000005L

    .line 2018
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v10

    .line 2017
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2019
    const-wide v8, 0x10d00000006L

    .line 2020
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v10

    .line 2019
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2021
    const-wide v8, 0x10800000007L

    .line 2022
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v10

    .line 2021
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2024
    :cond_9d
    if-eqz v2, :cond_d6

    .line 2025
    const-string/jumbo v8, "total-ram: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    .line 2026
    const-string/jumbo v8, "low-ram: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 2027
    const-string/jumbo v8, "max-cores: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 2028
    const-string v8, "has-secure-screen-lock: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 2031
    :cond_d6
    iget-object v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v8

    .line 2032
    .local v8, "configInfo":Landroid/content/pm/ConfigurationInfo;
    iget v9, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz v9, :cond_fd

    .line 2033
    if-eqz v1, :cond_ec

    .line 2034
    const-wide v9, 0x10d00000008L

    iget v11, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2037
    :cond_ec
    if-eqz v2, :cond_fd

    .line 2038
    const-string/jumbo v9, "opengl-version: 0x"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2039
    iget v9, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    :cond_fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v9

    .line 2044
    .local v9, "glExtensionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 2045
    .local v10, "glExtensions":[Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, [Ljava/lang/String;

    .line 2046
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2047
    const/4 v11, 0x0

    move v12, v11

    .line 2047
    .local v12, "i":I
    :goto_113
    array-length v13, v10

    if-ge v12, v13, :cond_132

    .line 2048
    if-eqz v1, :cond_122

    .line 2049
    const-wide v13, 0x20900000009L

    aget-object v15, v10, v12

    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2052
    :cond_122
    if-eqz v2, :cond_12f

    .line 2053
    const-string/jumbo v13, "opengl-extensions: "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v13, v10, v12

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    :cond_12f
    add-int/lit8 v12, v12, 0x1

    goto :goto_113

    .line 2058
    .end local v12    # "i":I
    :cond_132
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2059
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v13

    .line 2060
    .local v13, "slibs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$jVSWDZTj55yxOQmZSLdNsbUkMb4;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$jVSWDZTj55yxOQmZSLdNsbUkMb4;

    invoke-static {v14}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2061
    move v14, v11

    .line 2061
    .local v14, "i":I
    :goto_148
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_182

    .line 2062
    if-eqz v1, :cond_165

    .line 2063
    move-object/from16 v17, v12

    const-wide v11, 0x2090000000aL

    .line 2064
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2063
    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_167

    .line 2066
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_165
    move-object/from16 v17, v12

    .line 2066
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    :goto_167
    if-eqz v2, :cond_17c

    .line 2067
    const-string/jumbo v11, "shared-libraries: "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    :cond_17c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v17

    const/4 v11, 0x0

    goto :goto_148

    .line 2071
    .end local v14    # "i":I
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_182
    move-object/from16 v17, v12

    .line 2071
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v11, v17

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v12

    .line 2072
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .local v11, "pm":Landroid/content/pm/PackageManager;
    .local v12, "features":[Landroid/content/pm/FeatureInfo;
    sget-object v14, Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;

    invoke-static {v12, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2079
    const/16 v16, 0x0

    .line 2079
    .local v16, "i":I
    :goto_191
    move/from16 v14, v16

    .line 2079
    .end local v16    # "i":I
    .restart local v14    # "i":I
    array-length v15, v12

    if-ge v14, v15, :cond_1cd

    .line 2080
    aget-object v15, v12, v14

    iget-object v15, v15, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v15, :cond_1c2

    .line 2081
    if-eqz v1, :cond_1af

    .line 2082
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const-wide v6, 0x2090000000bL

    .line 2082
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .local v18, "memreader":Lcom/android/internal/util/MemInfoReader;
    .local v19, "kgm":Landroid/app/KeyguardManager;
    aget-object v15, v12, v14

    iget-object v15, v15, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1b3

    .line 2084
    .end local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v19    # "kgm":Landroid/app/KeyguardManager;
    .restart local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v7    # "kgm":Landroid/app/KeyguardManager;
    :cond_1af
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2084
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .restart local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v19    # "kgm":Landroid/app/KeyguardManager;
    :goto_1b3
    if-eqz v2, :cond_1c6

    .line 2085
    const-string v6, "features: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v6, v12, v14

    iget-object v6, v6, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c6

    .line 2079
    .end local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v19    # "kgm":Landroid/app/KeyguardManager;
    .restart local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v7    # "kgm":Landroid/app/KeyguardManager;
    :cond_1c2
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2079
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .restart local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v19    # "kgm":Landroid/app/KeyguardManager;
    :cond_1c6
    :goto_1c6
    add-int/lit8 v16, v14, 0x1

    .line 2079
    .end local v14    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_191

    .line 2090
    .end local v16    # "i":I
    .end local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v19    # "kgm":Landroid/app/KeyguardManager;
    .restart local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v7    # "kgm":Landroid/app/KeyguardManager;
    :cond_1cd
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2090
    .end local v6    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .end local v7    # "kgm":Landroid/app/KeyguardManager;
    .restart local v18    # "memreader":Lcom/android/internal/util/MemInfoReader;
    .restart local v19    # "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_1d6

    .line 2091
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2093
    :cond_1d6
    return-void
.end method


# virtual methods
.method getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1918
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1921
    .local v0, "glExtensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljavax/microedition/khronos/egl/EGL10;

    .line 1922
    .local v13, "egl":Ljavax/microedition/khronos/egl/EGL10;
    if-nez v13, :cond_18

    .line 1923
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    return-object v0

    .line 1928
    :cond_18
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v13, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v14

    .line 1929
    .local v14, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 1930
    .local v15, "version":[I
    invoke-interface {v13, v14, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 1933
    const/4 v12, 0x1

    new-array v10, v12, [I

    .line 1934
    .local v10, "numConfigs":[I
    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-interface {v13, v14, v1, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1935
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    return-object v0

    .line 1940
    :cond_39
    aget v1, v10, v9

    new-array v8, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1941
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    aget v1, v10, v9

    invoke-interface {v13, v14, v8, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    return-object v0

    .line 1949
    :cond_4f
    const/4 v1, 0x5

    new-array v4, v1, [I

    fill-array-data v4, :array_d2

    .line 1957
    .local v4, "surfaceSize":[I
    const/16 v16, 0x3098

    .line 1958
    .local v16, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v1, 0x3

    new-array v11, v1, [I

    fill-array-data v11, :array_e0

    .line 1961
    .local v11, "gles2":[I
    new-array v7, v12, [I

    .line 1963
    .local v7, "attrib":[I
    move v1, v9

    .local v1, "i":I
    :goto_60
    move v6, v1

    .end local v1    # "i":I
    .local v6, "i":I
    aget v1, v10, v9

    if-ge v6, v1, :cond_ca

    .line 1965
    aget-object v1, v8, v6

    const/16 v2, 0x3027

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1966
    aget v1, v7, v9

    const/16 v2, 0x3050

    if-ne v1, v2, :cond_7b

    .line 1967
    nop

    .line 1963
    .end local v6    # "i":I
    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .local v1, "numConfigs":[I
    .local v2, "attrib":[I
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v19, "i":I
    :goto_73
    move/from16 v19, v6

    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    goto :goto_c1

    .line 1973
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v19    # "i":I
    .restart local v6    # "i":I
    .restart local v7    # "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_7b
    aget-object v1, v8, v6

    const/16 v2, 0x3033

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1974
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-nez v1, :cond_88

    .line 1975
    goto :goto_73

    .line 1978
    :cond_88
    const/16 v17, 0x1

    .line 1979
    .local v17, "EGL_OPENGL_ES_BIT":I
    const/16 v18, 0x4

    .line 1980
    .local v18, "EGL_OPENGL_ES2_BIT":I
    aget-object v1, v8, v6

    const/16 v2, 0x3040

    invoke-interface {v13, v14, v1, v2, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1981
    aget v1, v7, v9

    and-int/2addr v1, v12

    if-eqz v1, :cond_a4

    .line 1982
    aget-object v3, v8, v6

    const/4 v5, 0x0

    move-object v1, v13

    move-object v2, v14

    move/from16 v19, v6

    move-object v6, v0

    .end local v6    # "i":I
    .restart local v19    # "i":I
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_a6

    .line 1984
    .end local v19    # "i":I
    .restart local v6    # "i":I
    :cond_a4
    move/from16 v19, v6

    .end local v6    # "i":I
    .restart local v19    # "i":I
    :goto_a6
    aget v1, v7, v9

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_bc

    .line 1985
    aget-object v1, v8, v19

    move-object v2, v7

    move-object v7, v13

    .end local v7    # "attrib":[I
    .restart local v2    # "attrib":[I
    move-object v3, v8

    move-object v8, v14

    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move v5, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v4

    .end local v10    # "numConfigs":[I
    .restart local v1    # "numConfigs":[I
    move v6, v12

    move-object v12, v0

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .end local v17    # "EGL_OPENGL_ES_BIT":I
    .end local v18    # "EGL_OPENGL_ES2_BIT":I
    goto :goto_c1

    .line 1963
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v7    # "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_bc
    move-object v2, v7

    move-object v3, v8

    move v5, v9

    move-object v1, v10

    move v6, v12

    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .restart local v1    # "numConfigs":[I
    .restart local v2    # "attrib":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :goto_c1
    add-int/lit8 v7, v19, 0x1

    .end local v19    # "i":I
    .local v7, "i":I
    move-object v10, v1

    move-object v8, v3

    move v9, v5

    move v12, v6

    move v1, v7

    move-object v7, v2

    goto :goto_60

    .line 1990
    .end local v1    # "numConfigs":[I
    .end local v2    # "attrib":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v7, "attrib":[I
    .restart local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v10    # "numConfigs":[I
    :cond_ca
    move-object v2, v7

    move-object v3, v8

    move-object v1, v10

    .end local v7    # "attrib":[I
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v10    # "numConfigs":[I
    .restart local v1    # "numConfigs":[I
    .restart local v2    # "attrib":[I
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-interface {v13, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1992
    return-object v0

    nop

    :array_d2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_e0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method getStepSize(IIIZ)I
    .registers 7
    .param p1, "current"    # I
    .param p2, "target"    # I
    .param p3, "inStepSize"    # I
    .param p4, "greaterThanTarget"    # Z

    .line 2707
    const/4 v0, 0x0

    .line 2708
    .local v0, "stepSize":I
    if-eqz p4, :cond_c

    if-ge p2, p1, :cond_c

    .line 2709
    sub-int/2addr p1, p3

    .line 2710
    move v0, p3

    .line 2711
    if-le p2, p1, :cond_c

    .line 2712
    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    .line 2715
    :cond_c
    if-nez p4, :cond_17

    if-le p2, p1, :cond_17

    .line 2716
    add-int/2addr p1, p3

    .line 2717
    move v0, p3

    .line 2718
    if-ge p2, p1, :cond_17

    .line 2719
    sub-int v1, p1, p2

    add-int/2addr v0, v1

    .line 2722
    :cond_17
    return v0
.end method

.method getUidState(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    .line 1813
    .local v0, "state":I
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1814
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "PROCESS_STATE_"

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1816
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    return v2
.end method

.method moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;
    .param p3, "stackRect"    # Landroid/graphics/Rect;
    .param p4, "stepSize"    # I
    .param p5, "maxToTravel"    # I
    .param p6, "movingForward"    # Z
    .param p7, "horizontal"    # Z
    .param p8, "delay_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2667
    const/4 v0, 0x0

    if-eqz p6, :cond_44

    .line 2668
    :goto_3
    if-lez p5, :cond_85

    if-eqz p7, :cond_d

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_15

    :cond_d
    if-nez p7, :cond_85

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_85

    .line 2671
    :cond_15
    if-eqz p7, :cond_2c

    .line 2672
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2673
    .local v1, "maxMove":I
    sub-int/2addr p5, v1

    .line 2674
    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2675
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_40

    .line 2677
    .end local v1    # "maxMove":I
    :cond_2c
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2678
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2679
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2680
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2682
    :goto_40
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_3

    .line 2685
    .end local v1    # "maxMove":I
    :cond_44
    :goto_44
    if-gez p5, :cond_85

    if-eqz p7, :cond_4e

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_56

    :cond_4e
    if-nez p7, :cond_85

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_85

    .line 2688
    :cond_56
    if-eqz p7, :cond_6d

    .line 2689
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2690
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2691
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 2692
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_81

    .line 2694
    .end local v1    # "maxMove":I
    :cond_6d
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2695
    .restart local v1    # "maxMove":I
    sub-int/2addr p5, v1

    .line 2696
    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2697
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 2699
    :goto_81
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_44

    .line 2703
    .end local v1    # "maxMove":I
    :cond_85
    return p5
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 153
    if-nez p1, :cond_7

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 158
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_46a

    goto/16 :goto_327

    :sswitch_18
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x24

    goto/16 :goto_328

    :sswitch_25
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x9

    goto/16 :goto_328

    :sswitch_32
    const-string v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x1e

    goto/16 :goto_328

    :sswitch_3e
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x3d

    goto/16 :goto_328

    :sswitch_4b
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x35

    goto/16 :goto_328

    :sswitch_57
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x3e

    goto/16 :goto_328

    :sswitch_64
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x28

    goto/16 :goto_328

    :sswitch_71
    const-string v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0xb

    goto/16 :goto_328

    :sswitch_7d
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x1a

    goto/16 :goto_328

    :sswitch_8a
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x2a

    goto/16 :goto_328

    :sswitch_96
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x3c

    goto/16 :goto_328

    :sswitch_a3
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x1d

    goto/16 :goto_328

    :sswitch_b0
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x11

    goto/16 :goto_328

    :sswitch_bc
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x39

    goto/16 :goto_328

    :sswitch_c8
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/4 v2, 0x7

    goto/16 :goto_328

    :sswitch_d4
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x10

    goto/16 :goto_328

    :sswitch_e1
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x13

    goto/16 :goto_328

    :sswitch_ed
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x12

    goto/16 :goto_328

    :sswitch_fa
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x22

    goto/16 :goto_328

    :sswitch_107
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x3a

    goto/16 :goto_328

    :sswitch_114
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0xc

    goto/16 :goto_328

    :sswitch_121
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x3b

    goto/16 :goto_328

    :sswitch_12e
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x14

    goto/16 :goto_328

    :sswitch_13a
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x2c

    goto/16 :goto_328

    :sswitch_147
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    move v2, v5

    goto/16 :goto_328

    :sswitch_153
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x23

    goto/16 :goto_328

    :sswitch_160
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    move v2, v3

    goto/16 :goto_328

    :sswitch_16c
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x38

    goto/16 :goto_328

    :sswitch_179
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    move v2, v4

    goto/16 :goto_328

    :sswitch_185
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x36

    goto/16 :goto_328

    :sswitch_192
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x16

    goto/16 :goto_328

    :sswitch_19e
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x15

    goto/16 :goto_328

    :sswitch_1aa
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x37

    goto/16 :goto_328

    :sswitch_1b7
    const-string/jumbo v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x17

    goto/16 :goto_328

    :sswitch_1c4
    const-string v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x1c

    goto/16 :goto_328

    :sswitch_1d0
    const-string/jumbo v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x19

    goto/16 :goto_328

    :sswitch_1dd
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/4 v2, 0x4

    goto/16 :goto_328

    :sswitch_1e9
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x1b

    goto/16 :goto_328

    :sswitch_1f6
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x30

    goto/16 :goto_328

    :sswitch_203
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0xd

    goto/16 :goto_328

    :sswitch_210
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x1f

    goto/16 :goto_328

    :sswitch_21d
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x2b

    goto/16 :goto_328

    :sswitch_22a
    const-string v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x29

    goto/16 :goto_328

    :sswitch_236
    const-string/jumbo v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x18

    goto/16 :goto_328

    :sswitch_243
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x2e

    goto/16 :goto_328

    :sswitch_24f
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x32

    goto/16 :goto_328

    :sswitch_25c
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x25

    goto/16 :goto_328

    :sswitch_268
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x21

    goto/16 :goto_328

    :sswitch_275
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/4 v2, 0x6

    goto/16 :goto_328

    :sswitch_281
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x27

    goto/16 :goto_328

    :sswitch_28e
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/4 v2, 0x5

    goto/16 :goto_328

    :sswitch_29a
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x8

    goto/16 :goto_328

    :sswitch_2a7
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x2d

    goto/16 :goto_328

    :sswitch_2b3
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/4 v2, 0x3

    goto/16 :goto_328

    :sswitch_2bf
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x34

    goto :goto_328

    :sswitch_2cb
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x2f

    goto :goto_328

    :sswitch_2d7
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0xa

    goto :goto_328

    :sswitch_2e2
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x26

    goto :goto_328

    :sswitch_2ee
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x33

    goto :goto_328

    :sswitch_2f9
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x20

    goto :goto_328

    :sswitch_305
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0x31

    goto :goto_328

    :sswitch_310
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0xf

    goto :goto_328

    :sswitch_31c
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    const/16 v2, 0xe

    goto :goto_328

    :cond_327
    :goto_327
    move v2, v1

    :goto_328
    packed-switch v2, :pswitch_data_568

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_453

    .line 279
    :pswitch_331
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 277
    :pswitch_336
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 275
    :pswitch_33b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 273
    :pswitch_340
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 271
    :pswitch_345
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 269
    :pswitch_34a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 267
    :pswitch_34f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 265
    :pswitch_354
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 263
    :pswitch_359
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 261
    :pswitch_35e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 259
    :pswitch_363
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 257
    :pswitch_368
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 255
    :pswitch_36d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 253
    :pswitch_372
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 251
    :pswitch_377
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 249
    :pswitch_37c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 247
    :pswitch_381
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 245
    :pswitch_386
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 243
    :pswitch_38b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 241
    :pswitch_390
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 239
    :pswitch_395
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 237
    :pswitch_39a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 235
    :pswitch_39f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 233
    :pswitch_3a4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 231
    :pswitch_3a9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 229
    :pswitch_3ae
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 227
    :pswitch_3b3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 225
    :pswitch_3b8
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 223
    :pswitch_3bd
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 221
    :pswitch_3c2
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result v2

    return v2

    .line 219
    :pswitch_3c7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 217
    :pswitch_3cc
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 215
    :pswitch_3d1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 213
    :pswitch_3d6
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 211
    :pswitch_3db
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 209
    :pswitch_3e0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 207
    :pswitch_3e5
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 205
    :pswitch_3ea
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 203
    :pswitch_3ef
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 201
    :pswitch_3f4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 199
    :pswitch_3f9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 197
    :pswitch_3fe
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 195
    :pswitch_403
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 193
    :pswitch_408
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 191
    :pswitch_40d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 189
    :pswitch_412
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 187
    :pswitch_417
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 185
    :pswitch_41c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 183
    :pswitch_421
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 181
    :pswitch_426
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 179
    :pswitch_42b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 176
    :pswitch_430
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    return v1

    .line 174
    :pswitch_43a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 172
    :pswitch_43f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 169
    :pswitch_444
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v2

    return v2

    .line 164
    :pswitch_449
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result v2

    return v2

    .line 161
    :pswitch_44e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result v2
    :try_end_452
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_452} :catch_454

    return v2

    .line 281
    :goto_453
    return v2

    .line 283
    :catch_454
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_46a
    .sparse-switch
        -0x7e761220 -> :sswitch_31c
        -0x7566d004 -> :sswitch_310
        -0x6684cefe -> :sswitch_305
        -0x65f435a5 -> :sswitch_2f9
        -0x6366a39f -> :sswitch_2ee
        -0x608449aa -> :sswitch_2e2
        -0x607e173f -> :sswitch_2d7
        -0x4ef4b7a7 -> :sswitch_2cb
        -0x4db101b9 -> :sswitch_2bf
        -0x436e13b6 -> :sswitch_2b3
        -0x3bc220e3 -> :sswitch_2a7
        -0x3988e78d -> :sswitch_29a
        -0x376fe74e -> :sswitch_28e
        -0x3619e74c -> :sswitch_281
        -0x3530e48a -> :sswitch_275
        -0x33db6ce6 -> :sswitch_268
        -0x30697b4a -> :sswitch_25c
        -0x2c900a2b -> :sswitch_24f
        -0x29b36e67 -> :sswitch_243
        -0x2420b54e -> :sswitch_236
        -0x20b34e72 -> :sswitch_22a
        -0x171366ac -> :sswitch_21d
        -0x152733fd -> :sswitch_210
        -0x12717657 -> :sswitch_203
        -0xa310e8a -> :sswitch_1f6
        -0x8b4339f -> :sswitch_1e9
        -0x5ffb810 -> :sswitch_1dd
        -0x1a6e7d0 -> :sswitch_1d0
        0x30c072 -> :sswitch_1c4
        0x323b5e -> :sswitch_1b7
        0x363585 -> :sswitch_1aa
        0x547b9a4 -> :sswitch_19e
        0x5a863a7 -> :sswitch_192
        0x68ac288 -> :sswitch_185
        0x68ac462 -> :sswitch_179
        0x6c257df -> :sswitch_16c
        0xb07b013 -> :sswitch_160
        0xe24026e -> :sswitch_153
        0x20c2801a -> :sswitch_147
        0x251993ad -> :sswitch_13a
        0x27c1d6ad -> :sswitch_12e
        0x2894b589 -> :sswitch_121
        0x2b19d394 -> :sswitch_114
        0x2d9208a0 -> :sswitch_107
        0x302bd54d -> :sswitch_fa
        0x304b5275 -> :sswitch_ed
        0x30b487aa -> :sswitch_e1
        0x310633ae -> :sswitch_d4
        0x35abdbf4 -> :sswitch_c8
        0x3d13bd7d -> :sswitch_bc
        0x404a0027 -> :sswitch_b0
        0x416a9e0f -> :sswitch_a3
        0x434f294b -> :sswitch_96
        0x48b444b2 -> :sswitch_8a
        0x49b0bd5a -> :sswitch_7d
        0x532d63e7 -> :sswitch_71
        0x5e69b6b6 -> :sswitch_64
        0x607e963c -> :sswitch_57
        0x63a518c2 -> :sswitch_4b
        0x6e6f530e -> :sswitch_3e
        0x6ef5269a -> :sswitch_32
        0x6f0f8fea -> :sswitch_25
        0x7c2bb6c4 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_568
    .packed-switch 0x0
        :pswitch_44e
        :pswitch_44e
        :pswitch_449
        :pswitch_449
        :pswitch_444
        :pswitch_444
        :pswitch_444
        :pswitch_444
        :pswitch_43f
        :pswitch_43f
        :pswitch_43a
        :pswitch_430
        :pswitch_42b
        :pswitch_426
        :pswitch_421
        :pswitch_41c
        :pswitch_417
        :pswitch_412
        :pswitch_40d
        :pswitch_408
        :pswitch_403
        :pswitch_3fe
        :pswitch_3f9
        :pswitch_3f4
        :pswitch_3ef
        :pswitch_3ea
        :pswitch_3e5
        :pswitch_3e0
        :pswitch_3db
        :pswitch_3d6
        :pswitch_3d1
        :pswitch_3cc
        :pswitch_3c7
        :pswitch_3c2
        :pswitch_3bd
        :pswitch_3b8
        :pswitch_3b3
        :pswitch_3ae
        :pswitch_3a9
        :pswitch_3a4
        :pswitch_39f
        :pswitch_39a
        :pswitch_395
        :pswitch_390
        :pswitch_38b
        :pswitch_386
        :pswitch_381
        :pswitch_37c
        :pswitch_377
        :pswitch_372
        :pswitch_36d
        :pswitch_368
        :pswitch_363
        :pswitch_35e
        :pswitch_359
        :pswitch_354
        :pswitch_34f
        :pswitch_34a
        :pswitch_345
        :pswitch_340
        :pswitch_33b
        :pswitch_336
        :pswitch_331
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 2816
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2817
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    .line 2818
    return-void
.end method

.method resizeStack(ILandroid/graphics/Rect;I)I
    .registers 6
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delayMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2526
    if-nez p2, :cond_d

    .line 2527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: invalid input bounds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    const/4 v0, -0x1

    return v0

    .line 2530
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I

    move-result v0

    return v0
.end method

.method resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I
    .registers 12
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delayMs"    # I
    .param p4, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2507
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move v1, p1

    move-object v2, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2508
    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2510
    goto :goto_11

    .line 2509
    :catch_10
    move-exception v0

    .line 2511
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method runAttachAgent(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2742
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2745
    .local v0, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2747
    .local v1, "agent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 2748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2749
    const/4 v2, -0x1

    return v2

    .line 2751
    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    const/4 v2, 0x0

    return v2
.end method

.method runBugReport(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    const/4 v0, 0x0

    move v1, v0

    .line 940
    .local v1, "bugreportType":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_37

    .line 941
    const-string v2, "--progress"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 942
    const/4 v1, 0x1

    goto :goto_2

    .line 943
    :cond_13
    const-string v2, "--telephony"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 944
    const/4 v1, 0x4

    goto :goto_2

    .line 946
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    const/4 v0, -0x1

    return v0

    .line 950
    :cond_37
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V

    .line 951
    const-string v2, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    return v0
.end method

.method runClearDebugApp(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 921
    return v1
.end method

.method runClearWatchHeap(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, "proc":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method runCrash(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    const/4 v0, -0x1

    move v5, v0

    .line 975
    .local v5, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 975
    .local v7, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 976
    const-string v1, "--user"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 977
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 979
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    return v0

    .line 984
    :cond_33
    const/4 v0, -0x1

    .line 985
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 986
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 989
    .local v8, "arg":Ljava/lang/String;
    :try_start_3a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_42

    move v0, v2

    .line 992
    nop

    .line 993
    .end local v1    # "packageName":Ljava/lang/String;
    .local v9, "packageName":Ljava/lang/String;
    :goto_40
    move-object v9, v1

    goto :goto_45

    .line 990
    .end local v9    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_42
    move-exception v2

    .line 991
    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object v1, v8

    .line 991
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_40

    .line 993
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    :goto_45
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, -0x1

    const-string/jumbo v6, "shell-induced crash"

    move v3, v0

    move-object v4, v9

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 994
    const/4 v1, 0x0

    return v1
.end method

.method runDisplay(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2356
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x60e6318c

    if-eq v1, v3, :cond_f

    goto :goto_1a

    :cond_f
    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v2

    :goto_1b
    if-eqz v1, :cond_3b

    .line 2360
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    return v2

    .line 2358
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1
.end method

.method runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2425
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2426
    .local v1, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2427
    .local v2, "displayIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2428
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityManager;->moveStackToDisplay(II)V

    .line 2429
    const/4 v4, 0x0

    return v4
.end method

.method runDumpHeap(Ljava/io/PrintWriter;)I
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 849
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v2, 0x1

    .line 850
    .local v2, "managed":Z
    const/4 v3, 0x0

    .line 851
    .local v3, "mallocInfo":Z
    const/4 v4, -0x2

    .line 852
    .local v4, "userId":I
    const/4 v11, 0x0

    .line 855
    .local v11, "runGc":Z
    :cond_a
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .line 855
    .local v14, "opt":Ljava/lang/String;
    const/4 v15, -0x1

    if-eqz v6, :cond_5e

    .line 856
    const-string v6, "--user"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    .line 858
    if-ne v4, v15, :cond_a

    .line 859
    const-string v5, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    return v15

    .line 862
    :cond_2a
    const-string v6, "-n"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 863
    const/4 v2, 0x0

    goto :goto_a

    .line 864
    :cond_34
    const-string v6, "-g"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 865
    const/4 v11, 0x1

    goto :goto_a

    .line 866
    :cond_3e
    const-string v6, "-m"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 867
    const/4 v2, 0x0

    .line 868
    const/4 v3, 0x1

    goto :goto_a

    .line 870
    :cond_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    return v15

    .line 874
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    .line 875
    .local v13, "process":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 877
    .local v12, "heapFile":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    .line 878
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 879
    const-string/jumbo v6, "w"

    invoke-virtual {v0, v12, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 880
    .local v16, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v16, :cond_79

    .line 881
    return v15

    .line 884
    :cond_79
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v13

    move v8, v4

    move v9, v2

    move-object/from16 v17, v10

    move v10, v3

    .line 884
    .end local v10    # "file":Ljava/io/File;
    .local v17, "file":Ljava/io/File;
    move-object/from16 v18, v12

    .line 884
    .end local v12    # "heapFile":Ljava/lang/String;
    .local v18, "heapFile":Ljava/lang/String;
    move-object v5, v13

    move-object/from16 v13, v16

    .line 884
    .end local v13    # "process":Ljava/lang/String;
    .local v5, "process":Ljava/lang/String;
    invoke-interface/range {v6 .. v13}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HEAP DUMP FAILED on process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    return v15

    .line 888
    :cond_a1
    const/4 v6, 0x0

    return v6
.end method

.method runForceStop(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    const/4 v0, -0x1

    move v1, v0

    .line 959
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 960
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 961
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 963
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    return v0

    .line 967
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method runGetConfig(Ljava/io/PrintWriter;)I
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 2096
    move-object/from16 v8, p1

    const/4 v0, -0x1

    .line 2097
    .local v0, "days":I
    const/4 v1, 0x0

    .line 2098
    .local v1, "asProto":Z
    const/4 v9, 0x0

    move v10, v0

    move v11, v1

    move v0, v9

    .line 2098
    .end local v1    # "asProto":Z
    .local v0, "inclDevice":Z
    .local v10, "days":I
    .local v11, "asProto":Z
    :goto_a
    move v12, v0

    .line 2101
    .end local v0    # "inclDevice":Z
    .local v12, "inclDevice":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 2101
    .local v13, "opt":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_5c

    .line 2102
    const-string v0, "--days"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2104
    if-lez v10, :cond_27

    .line 2098
    .end local v12    # "inclDevice":Z
    .end local v13    # "opt":Ljava/lang/String;
    .restart local v0    # "inclDevice":Z
    :goto_25
    move v0, v12

    goto :goto_a

    .line 2105
    .end local v0    # "inclDevice":Z
    .restart local v12    # "inclDevice":Z
    .restart local v13    # "opt":Ljava/lang/String;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--days must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2107
    :cond_2f
    const-string v0, "--proto"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2108
    const/4 v11, 0x1

    goto :goto_25

    .line 2109
    :cond_39
    const-string v0, "--device"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2110
    const/4 v0, 0x1

    .line 2110
    .end local v12    # "inclDevice":Z
    .restart local v0    # "inclDevice":Z
    goto :goto_a

    .line 2112
    .end local v0    # "inclDevice":Z
    .restart local v12    # "inclDevice":Z
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2113
    return v1

    .line 2117
    :cond_5c
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 2118
    .local v14, "config":Landroid/content/res/Configuration;
    if-nez v14, :cond_6e

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Activity manager has no configuration"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    return v1

    .line 2123
    :cond_6e
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/display/DisplayManager;

    .line 2124
    .local v15, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v15, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 2125
    .local v6, "display":Landroid/view/Display;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v0

    .line 2126
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2128
    if-eqz v11, :cond_c1

    .line 2129
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 2130
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v0, 0x10b00000001L

    invoke-virtual {v14, v4, v0, v1, v5}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    .line 2131
    if-eqz v12, :cond_b4

    .line 2132
    const-wide v2, 0x10b00000002L

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v4

    move-object v9, v4

    move-object/from16 v4, v16

    .line 2132
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v9, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object/from16 v17, v5

    move-object v5, v14

    .line 2132
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v16, v6

    move-object v6, v15

    .line 2132
    .end local v6    # "display":Landroid/view/Display;
    .local v16, "display":Landroid/view/Display;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/hardware/display/DisplayManager;)V

    goto :goto_b9

    .line 2134
    .end local v9    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v16    # "display":Landroid/view/Display;
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_b4
    move-object v9, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .line 2134
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v9    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v16    # "display":Landroid/view/Display;
    .restart local v17    # "metrics":Landroid/util/DisplayMetrics;
    :goto_b9
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2136
    .end local v9    # "proto":Landroid/util/proto/ProtoOutputStream;
    nop

    .line 2156
    move-object/from16 v9, v17

    goto/16 :goto_13d

    .line 2137
    .end local v16    # "display":Landroid/view/Display;
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_c1
    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .line 2137
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "display":Landroid/view/Display;
    .restart local v16    # "display":Landroid/view/Display;
    .restart local v17    # "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-static {v14, v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    if-eqz v12, :cond_107

    .line 2140
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-object v0, v7

    move-object v4, v8

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/hardware/display/DisplayManager;)V

    .line 2143
    :cond_107
    if-ltz v10, :cond_13d

    .line 2144
    invoke-direct {v7, v10}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object v0

    .line 2145
    .local v0, "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2146
    .local v1, "recentConfigSize":I
    if-lez v1, :cond_13d

    .line 2147
    const-string/jumbo v2, "recentConfigs:"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    const/4 v2, 0x0

    .line 2148
    .local v2, "i":I
    :goto_11a
    if-ge v2, v1, :cond_13d

    .line 2149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 2149
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 2156
    .end local v0    # "recentConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/Configuration;>;"
    .end local v1    # "recentConfigSize":I
    .end local v2    # "i":I
    :cond_13d
    :goto_13d
    const/4 v0, 0x0

    return v0
.end method

.method runGetCurrentUser(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "Current user not set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1658
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1659
    const/4 v1, 0x0

    return v1
.end method

.method runGetInactive(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2278
    const/4 v0, -0x2

    .line 2281
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2281
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2282
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2285
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    const/4 v1, -0x1

    return v1

    .line 2289
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2291
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2293
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-interface {v3, v1, v0}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z

    move-result v4

    .line 2294
    .local v4, "isIdle":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Idle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    const/4 v5, 0x0

    return v5
.end method

.method runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2248
    const/4 v0, -0x2

    .line 2251
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2251
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2252
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2255
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    const/4 v1, -0x1

    return v1

    .line 2259
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2261
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "usagestats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v3

    .line 2263
    .local v3, "usm":Landroid/app/usage/IUsageStatsManager;
    if-eqz v1, :cond_4d

    .line 2264
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2265
    .local v4, "bucket":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2266
    .end local v4    # "bucket":I
    goto :goto_77

    .line 2267
    :cond_4d
    const-string v4, "com.android.shell"

    invoke-interface {v3, v4, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2269
    .local v4, "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/AppStandbyInfo;

    .line 2270
    .local v6, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v7, v6, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    iget v7, v6, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 2272
    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    goto :goto_5b

    .line 2274
    .end local v4    # "buckets":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :cond_77
    :goto_77
    const/4 v4, 0x0

    return v4
.end method

.method runGetStartedUserState(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1769
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1773
    .local v0, "userId":I
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 1776
    goto :goto_31

    .line 1774
    :catch_1c
    move-exception v1

    .line 1775
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_31
    const/4 v1, 0x0

    return v1
.end method

.method runHang(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    const/4 v0, 0x0

    move v1, v0

    .line 1561
    .local v1, "allowRestart":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1562
    const-string v2, "--allow-restart"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1563
    const/4 v1, 0x1

    goto :goto_2

    .line 1565
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    const/4 v0, -0x1

    return v0

    .line 1570
    :cond_2d
    const-string v2, "Hanging the system..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1572
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, v4, v1}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    .line 1573
    return v0
.end method

.method runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    const/4 v0, -0x1

    return v0

    .line 1596
    :cond_21
    const-string v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 1598
    const/4 v0, 0x0

    return v0
.end method

.method runIsUserStopped(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1763
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result v1

    .line 1764
    .local v1, "stopped":Z
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1765
    const/4 v2, 0x0

    return v2
.end method

.method runKill(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 998
    const/4 v0, -0x1

    move v1, v0

    .line 1001
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1002
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1005
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    return v0

    .line 1009
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method runKillAll(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method runMakeIdle(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    const/4 v0, -0x1

    move v1, v0

    .line 1022
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1023
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1026
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    return v0

    .line 1030
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    .line 1031
    const/4 v0, 0x0

    return v0
.end method

.method runMonitor(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, "gdbPort":Ljava/lang/String;
    const/4 v1, 0x0

    move v7, v1

    .line 1350
    .local v7, "monkey":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v8, "opt":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 1351
    const-string v2, "--gdb"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1353
    :cond_17
    const-string v2, "-m"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1354
    const/4 v7, 0x1

    goto :goto_3

    .line 1356
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    const/4 v1, -0x1

    return v1

    .line 1361
    :cond_3b
    new-instance v9, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v9

    move-object v4, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 1363
    .local v2, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    .line 1364
    return v1
.end method

.method runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2569
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2570
    .local v0, "stackId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2571
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v2, -0x1

    if-nez v1, :cond_19

    .line 2572
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    return v2

    .line 2576
    :cond_19
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityManager;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2577
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Didn\'t move top activity to pinned stack."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    return v2

    .line 2580
    :cond_2b
    const/4 v2, 0x0

    return v2
.end method

.method runNoHomeScreen(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2787
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2788
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 2789
    const/4 v1, -0x1

    return v1

    .line 2791
    :cond_8
    const v1, 0x112008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2792
    const/4 v1, 0x0

    return v1
.end method

.method runPackageImportance(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1628
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v2, "com.android.shell"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1629
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1630
    const/4 v2, 0x0

    return v2
.end method

.method runRestart(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    const/4 v0, -0x1

    return v0

    .line 1583
    :cond_21
    const-string v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1585
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V

    .line 1586
    const/4 v0, 0x0

    return v0
.end method

.method runScreenCompat(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1605
    const/4 v1, 0x1

    .line 1605
    .local v1, "enabled":Z
    :goto_e
    goto :goto_1a

    .line 1606
    .end local v1    # "enabled":Z
    :cond_f
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1607
    const/4 v1, 0x0

    goto :goto_e

    .line 1610
    .restart local v1    # "enabled":Z
    :goto_1a
    nop

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1616
    .local v2, "packageName":Ljava/lang/String;
    :cond_1f
    const/4 v3, 0x0

    :try_start_20
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    if-eqz v1, :cond_26

    .line 1617
    const/4 v5, 0x1

    goto :goto_28

    .line 1618
    :cond_26
    nop

    .line 1616
    move v5, v3

    :goto_28
    invoke-interface {v4, v2, v5}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2c

    .line 1620
    goto :goto_2d

    .line 1619
    :catch_2c
    move-exception v4

    .line 1621
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1622
    if-nez v2, :cond_1f

    .line 1623
    return v3

    .line 1609
    .end local v1    # "enabled":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    const/4 v1, -0x1

    return v1
.end method

.method runSendBroadcast(Ljava/io/PrintWriter;)I
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 673
    move-object/from16 v2, p1

    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_5f

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 675
    nop

    .line 677
    const/high16 v3, 0x400000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 678
    new-instance v3, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v3, v2}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    move-object v15, v3

    .line 679
    .local v15, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/16 v17, 0x0

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    .line 680
    :goto_1d
    move-object v11, v3

    goto :goto_27

    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    aput-object v4, v3, v17

    goto :goto_1d

    .line 681
    .local v11, "requiredPermissions":[Ljava/lang/String;
    :goto_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 683
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v5, v0

    move/from16 v18, v7

    move-object v7, v15

    move-object/from16 v19, v15

    move/from16 v15, v16

    .end local v15    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .local v19, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    move/from16 v16, v18

    invoke-interface/range {v3 .. v16}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 685
    move-object/from16 v3, v19

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    .line 686
    .end local v19    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .local v3, "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    return v17

    .line 674
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "receiver":Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
    .end local v11    # "requiredPermissions":[Ljava/lang/String;
    :catch_5f
    move-exception v0

    move-object v3, v0

    .line 675
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method runSendTrimMemory(Ljava/io/PrintWriter;)I
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    const/4 v0, -0x2

    .line 2301
    .local v0, "userId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_3e

    .line 2302
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2303
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2304
    if-ne v0, v3, :cond_1

    .line 2305
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: Can\'t use user \'all\'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    return v3

    .line 2309
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    return v3

    .line 2314
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2315
    .local v1, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2317
    .local v4, "levelArg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_e2

    goto :goto_95

    :sswitch_4f
    const-string v5, "HIDDEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    move v5, v6

    goto :goto_96

    :sswitch_59
    const-string v5, "RUNNING_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x3

    goto :goto_96

    :sswitch_63
    const-string v5, "COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x6

    goto :goto_96

    :sswitch_6d
    const-string v5, "MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x4

    goto :goto_96

    :sswitch_77
    const-string v5, "RUNNING_MODERATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x1

    goto :goto_96

    :sswitch_81
    const-string v5, "BACKGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x2

    goto :goto_96

    :sswitch_8b
    const-string v5, "RUNNING_CRITICAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x5

    goto :goto_96

    :cond_95
    :goto_95
    move v5, v3

    :goto_96
    packed-switch v5, :pswitch_data_100

    .line 2341
    :try_start_99
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9d} :catch_c8

    goto :goto_b2

    .line 2337
    :pswitch_9e
    const/16 v5, 0x50

    .line 2338
    .local v5, "level":I
    goto :goto_b4

    .line 2334
    .end local v5    # "level":I
    :pswitch_a1
    const/16 v5, 0xf

    .line 2335
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2331
    .end local v5    # "level":I
    :pswitch_a4
    const/16 v5, 0x3c

    .line 2332
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2328
    .end local v5    # "level":I
    :pswitch_a7
    const/16 v5, 0xa

    .line 2329
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2325
    .end local v5    # "level":I
    :pswitch_aa
    const/16 v5, 0x28

    .line 2326
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2322
    .end local v5    # "level":I
    :pswitch_ad
    const/4 v5, 0x5

    .line 2323
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2319
    .end local v5    # "level":I
    :pswitch_af
    const/16 v5, 0x14

    .line 2320
    .restart local v5    # "level":I
    goto :goto_b4

    .line 2341
    .end local v5    # "level":I
    :goto_b2
    nop

    .line 2345
    .restart local v5    # "level":I
    nop

    .line 2344
    :goto_b4
    nop

    .line 2347
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v7, v1, v0, v5}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "Unknown error: failed to set trim level"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    return v3

    .line 2351
    :cond_c7
    return v6

    .line 2342
    .end local v5    # "level":I
    :catch_c8
    move-exception v5

    .line 2343
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown level option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2344
    return v3

    :sswitch_data_e2
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_8b
        -0x327dbed2 -> :sswitch_81
        -0xd10205d -> :sswitch_77
        0x9c2ed03 -> :sswitch_6d
        0xaeb2139 -> :sswitch_63
        0x3fef1094 -> :sswitch_59
        0x7f0191aa -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_af
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
    .end packed-switch
.end method

.method runSetAgentApp(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "agent":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v2, 0x0

    return v2
.end method

.method runSetDebugApp(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "wait":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 896
    .local v0, "persistent":Z
    .local v2, "wait":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 897
    const-string v3, "-w"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 898
    const/4 v2, 0x1

    goto :goto_4

    .line 899
    :cond_15
    const-string v3, "--persistent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 900
    const/4 v0, 0x1

    goto :goto_4

    .line 902
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const/4 v1, -0x1

    return v1

    .line 907
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v5, v3, v2, v0}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 909
    return v1
.end method

.method runSetInactive(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2166
    const/4 v0, -0x2

    .line 2169
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2169
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2170
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2171
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2173
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    const/4 v1, -0x1

    return v1

    .line 2177
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2178
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 2180
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "usagestats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v4

    .line 2182
    .local v4, "usm":Landroid/app/usage/IUsageStatsManager;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v4, v1, v5, v0}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    .line 2183
    const/4 v5, 0x0

    return v5
.end method

.method runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2210
    const/4 v0, -0x2

    .line 2213
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2213
    .local v2, "opt":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_33

    .line 2214
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2215
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2217
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    return v3

    .line 2221
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2222
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2223
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2224
    .local v5, "bucket":I
    if-gez v5, :cond_42

    return v3

    .line 2225
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    move v3, v6

    .line 2228
    .local v3, "multiple":Z
    :goto_4c
    const-string/jumbo v7, "usagestats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v7

    .line 2230
    .local v7, "usm":Landroid/app/usage/IUsageStatsManager;
    if-nez v3, :cond_61

    .line 2231
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v1, v8, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_91

    .line 2233
    :cond_61
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v8, "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2235
    :goto_6e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_89

    .line 2236
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2237
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v5

    .line 2238
    if-gez v5, :cond_80

    goto :goto_6e

    .line 2239
    :cond_80
    new-instance v9, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v9, v1, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 2241
    :cond_89
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v9, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2242
    .local v9, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v7, v9, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 2244
    .end local v8    # "bucketInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v9    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/AppStandbyInfo;>;"
    :goto_91
    return v6
.end method

.method runSetWatchHeap(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 926
    .local v6, "proc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method runStack(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2366
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2367
    .local v0, "op":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_d2

    goto/16 :goto_7d

    :sswitch_e
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x1

    goto :goto_7e

    :sswitch_19
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    goto :goto_7e

    :sswitch_24
    const-string/jumbo v1, "positiontask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x5

    goto :goto_7e

    :sswitch_2f
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x6

    goto :goto_7e

    :sswitch_3a
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x7

    goto :goto_7e

    :sswitch_44
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x2

    goto :goto_7e

    :sswitch_4f
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/16 v1, 0x9

    goto :goto_7e

    :sswitch_5b
    const-string/jumbo v1, "move-top-activity-to-pinned-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/16 v1, 0x8

    goto :goto_7e

    :sswitch_67
    const-string/jumbo v1, "resize-docked-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x4

    goto :goto_7e

    :sswitch_72
    const-string/jumbo v1, "resize-animated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x3

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v1, v2

    :goto_7e
    packed-switch v1, :pswitch_data_fc

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    return v2

    .line 2387
    :pswitch_9f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackRemove(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2385
    :pswitch_a4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2383
    :pswitch_a9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackInfo(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2381
    :pswitch_ae
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2379
    :pswitch_b3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackPositionTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2377
    :pswitch_b8
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResizeDocked(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2375
    :pswitch_bd
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResizeAnimated(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2373
    :pswitch_c2
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2371
    :pswitch_c7
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2369
    :pswitch_cc
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackStart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_d2
    .sparse-switch
        -0x5c78e564 -> :sswitch_72
        -0x44ac447a -> :sswitch_67
        -0x407f3e65 -> :sswitch_5b
        -0x37b5077c -> :sswitch_4f
        -0x37b2634c -> :sswitch_44
        0x3164ae -> :sswitch_3a
        0x32b09e -> :sswitch_2f
        0x216122e -> :sswitch_24
        0x68ac462 -> :sswitch_19
        0x3ceed601 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
    .end packed-switch
.end method

.method runStackInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2554
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2555
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2556
    .local v1, "activityType":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 2557
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2558
    const/4 v3, 0x0

    return v3
.end method

.method runStackList(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 2547
    .local v0, "stacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 2548
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2549
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    goto :goto_a

    .line 2550
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method runStackMoveTask(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2458
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2459
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2460
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2461
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2462
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2464
    .local v4, "toTopStr":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2465
    const/4 v5, 0x1

    .line 2465
    .local v5, "toTop":Z
    :goto_1e
    goto :goto_29

    .line 2466
    .end local v5    # "toTop":Z
    :cond_1f
    const-string v5, "false"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2467
    const/4 v5, 0x0

    goto :goto_1e

    .line 2470
    .restart local v5    # "toTop":Z
    :goto_29
    nop

    .line 2473
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    .line 2474
    const/4 v6, 0x0

    return v6

    .line 2469
    .end local v5    # "toTop":Z
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: bad toTop arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    const/4 v5, -0x1

    return v5
.end method

.method runStackPositionTask(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2534
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2535
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2536
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2537
    .local v2, "stackIdStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2538
    .local v3, "stackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2539
    .local v4, "positionStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2541
    .local v5, "position":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v1, v3, v5}, Landroid/app/IActivityManager;->positionTaskInStack(III)V

    .line 2542
    const/4 v6, 0x0

    return v6
.end method

.method runStackRemove(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2562
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2563
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2564
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->removeStack(I)V

    .line 2565
    const/4 v2, 0x0

    return v2
.end method

.method runStackResize(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2480
    .local v1, "stackId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2481
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_19

    .line 2482
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    const/4 v3, -0x1

    return v3

    .line 2485
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStack(ILandroid/graphics/Rect;I)I

    move-result v3

    return v3
.end method

.method runStackResizeAnimated(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2490
    .local v0, "stackIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2492
    .local v1, "stackId":I
    const-string/jumbo v2, "null"

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2493
    const/4 v2, 0x0

    .line 2493
    .local v2, "bounds":Landroid/graphics/Rect;
    goto :goto_28

    .line 2495
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_17
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2496
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_28

    .line 2497
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    const/4 v3, -0x1

    return v3

    .line 2501
    :cond_28
    :goto_28
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I

    move-result v3

    return v3
.end method

.method runStackResizeDocked(Ljava/io/PrintWriter;)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2515
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2516
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2517
    .local v7, "taskBounds":Landroid/graphics/Rect;
    if-eqz v6, :cond_19

    if-nez v7, :cond_d

    goto :goto_19

    .line 2521
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2522
    const/4 v0, 0x0

    return v0

    .line 2518
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: invalid input bounds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    const/4 v0, -0x1

    return v0
.end method

.method runStackStart(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2434
    .local v0, "displayIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2437
    .local v1, "displayId":I
    const/4 v2, -0x2

    :try_start_9
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_d} :catch_18

    .line 2440
    .local v2, "intent":Landroid/content/Intent;
    nop

    .line 2439
    nop

    .line 2442
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->createStackOnDisplay(I)I

    move-result v3

    .line 2443
    .local v3, "stackId":I
    nop

    .line 2454
    const/4 v4, 0x0

    return v4

    .line 2438
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "stackId":I
    :catch_18
    move-exception v2

    .line 2439
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method runStartActivity(Ljava/io/PrintWriter;)I
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 374
    move-object/from16 v2, p1

    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_37b

    move-object v15, v0

    .line 377
    .local v15, "intent":Landroid/content/Intent;
    nop

    .line 376
    nop

    .line 379
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v14, -0x1

    const/4 v13, 0x1

    if-ne v0, v14, :cond_1c

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    return v13

    .line 384
    :cond_1c
    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_44

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_44

    const-string v3, "content"

    .line 386
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 387
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 391
    .end local v0    # "mimeType":Ljava/lang/String;
    .local v12, "mimeType":Ljava/lang/String;
    :cond_44
    move-object v12, v0

    :goto_45
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_d7

    .line 393
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 394
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "packageName":Ljava/lang/String;
    goto :goto_97

    .line 396
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_59
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    iget v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v15, v12, v11, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_be

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_6e

    goto :goto_be

    .line 402
    :cond_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v13, :cond_8d

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    return v13

    .line 408
    :cond_8d
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 408
    .local v0, "packageName":Ljava/lang/String;
    :goto_97
    move-object v3, v0

    .line 410
    .end local v0    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 412
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 414
    const-wide/16 v4, 0xfa

    :try_start_b8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bb} :catch_bc

    .line 416
    goto :goto_d7

    .line 415
    :catch_bc
    move-exception v0

    .line 415
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_d7

    .line 399
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_be
    :goto_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Intent does not match any activities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    return v13

    .line 419
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d7
    :goto_d7
    const/4 v0, 0x0

    .line 421
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-nez v3, :cond_e0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v3, :cond_113

    .line 422
    :cond_e0
    const/4 v3, 0x0

    .line 423
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-eqz v4, :cond_f1

    .line 424
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const-string/jumbo v5, "w"

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 425
    if-nez v3, :cond_f1

    .line 426
    return v13

    .line 429
    :cond_f1
    new-instance v4, Landroid/app/ProfilerInfo;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    move-object v0, v4

    .line 433
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 435
    const/high16 v3, 0x10000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    const/16 v16, 0x0

    .line 439
    .local v16, "result":Landroid/app/WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 440
    .local v17, "startTime":J
    const/4 v3, 0x0

    .line 441
    .local v3, "options":Landroid/app/ActivityOptions;
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v4, v14, :cond_143

    .line 442
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 443
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 445
    :cond_143
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v4, :cond_152

    .line 446
    if-nez v3, :cond_14d

    .line 447
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 449
    :cond_14d
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 451
    :cond_152
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v4, :cond_161

    .line 452
    if-nez v3, :cond_15c

    .line 453
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 455
    :cond_15c
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 457
    :cond_161
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v4, v14, :cond_177

    .line 458
    if-nez v3, :cond_16b

    .line 459
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 461
    :cond_16b
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 463
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v4, :cond_177

    .line 464
    invoke-virtual {v3, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 467
    :cond_177
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v4, :cond_184

    .line 468
    if-nez v3, :cond_181

    .line 469
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 471
    :cond_181
    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 473
    .end local v3    # "options":Landroid/app/ActivityOptions;
    .local v10, "options":Landroid/app/ActivityOptions;
    :cond_184
    move-object v10, v3

    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1c4

    .line 474
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 476
    if-eqz v10, :cond_19d

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_19a
    move-object/from16 v20, v4

    goto :goto_19e

    :cond_19d
    goto :goto_19a

    :goto_19e
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 474
    move/from16 v21, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    move/from16 v22, v7

    move-object v7, v12

    move-object/from16 v24, v10

    move/from16 v10, v19

    .line 474
    .end local v10    # "options":Landroid/app/ActivityOptions;
    .local v24, "options":Landroid/app/ActivityOptions;
    move/from16 v19, v11

    move/from16 v11, v22

    move-object/from16 v22, v12

    move-object v12, v0

    .line 474
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v22, "mimeType":Ljava/lang/String;
    move/from16 v23, v13

    move-object/from16 v13, v20

    move/from16 v20, v14

    move/from16 v14, v21

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    .line 477
    .end local v16    # "result":Landroid/app/WaitResult;
    .local v3, "result":Landroid/app/WaitResult;
    iget v4, v3, Landroid/app/WaitResult;->result:I

    .line 479
    .local v4, "res":I
    move-object/from16 v16, v3

    goto :goto_1f4

    .line 479
    .end local v3    # "result":Landroid/app/WaitResult;
    .end local v4    # "res":I
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v24    # "options":Landroid/app/ActivityOptions;
    .restart local v10    # "options":Landroid/app/ActivityOptions;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_1c4
    move-object/from16 v24, v10

    move/from16 v19, v11

    move-object/from16 v22, v12

    move/from16 v23, v13

    move/from16 v20, v14

    .line 479
    .end local v10    # "options":Landroid/app/ActivityOptions;
    .end local v12    # "mimeType":Ljava/lang/String;
    .restart local v22    # "mimeType":Ljava/lang/String;
    .restart local v24    # "options":Landroid/app/ActivityOptions;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 481
    move-object/from16 v14, v24

    if-eqz v14, :cond_1e1

    .line 481
    .end local v24    # "options":Landroid/app/ActivityOptions;
    .local v14, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_1df
    move-object v13, v4

    goto :goto_1e2

    :cond_1e1
    goto :goto_1df

    :goto_1e2
    iget v12, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 479
    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, v22

    move/from16 v21, v12

    move-object v12, v0

    move-object/from16 v24, v14

    move/from16 v14, v21

    .line 479
    .end local v14    # "options":Landroid/app/ActivityOptions;
    .restart local v24    # "options":Landroid/app/ActivityOptions;
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v4

    .line 479
    .restart local v4    # "res":I
    :goto_1f4
    move v3, v4

    .line 483
    .end local v4    # "res":I
    .local v3, "res":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 484
    .local v4, "endTime":J
    iget-boolean v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v6, :cond_1ff

    move-object v6, v2

    goto :goto_203

    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 485
    .local v6, "out":Ljava/io/PrintWriter;
    :goto_203
    const/4 v7, 0x0

    .line 486
    .local v7, "launched":Z
    const/16 v8, 0x64

    if-eq v3, v8, :cond_2a8

    packed-switch v3, :pswitch_data_388

    packed-switch v3, :pswitch_data_390

    packed-switch v3, :pswitch_data_39c

    .line 547
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, unknown error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2af

    .line 497
    :pswitch_227
    const/4 v7, 0x1

    .line 498
    const-string v8, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    goto/16 :goto_2af

    .line 510
    :pswitch_22f
    const/4 v7, 0x1

    .line 511
    const-string v8, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    goto/16 :goto_2af

    .line 504
    :pswitch_237
    const/4 v7, 0x1

    .line 505
    const-string v8, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    goto/16 :goto_2af

    .line 488
    :pswitch_23f
    const/4 v7, 0x1

    .line 489
    goto :goto_2af

    .line 516
    :pswitch_241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, unable to resolve "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v15}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 516
    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    goto :goto_2af

    .line 521
    :pswitch_25a
    const-string v8, "Error type 3"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 522
    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    goto :goto_2af

    .line 527
    :pswitch_281
    const-string v8, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    goto :goto_2af

    .line 532
    :pswitch_287
    const-string v8, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    goto :goto_2af

    .line 537
    :pswitch_28d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    goto :goto_2af

    .line 542
    :pswitch_2a2
    const-string v8, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    goto :goto_2af

    .line 491
    :cond_2a8
    const/4 v7, 0x1

    .line 492
    const-string v8, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    nop

    .line 551
    :goto_2af
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 552
    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v8, :cond_35f

    if-eqz v7, :cond_35f

    .line 553
    if-nez v16, :cond_2c6

    .line 554
    new-instance v8, Landroid/app/WaitResult;

    invoke-direct {v8}, Landroid/app/WaitResult;-><init>()V

    .line 555
    .end local v16    # "result":Landroid/app/WaitResult;
    .local v8, "result":Landroid/app/WaitResult;
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_2c8

    .line 557
    .end local v8    # "result":Landroid/app/WaitResult;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_2c6
    move-object/from16 v8, v16

    .line 557
    .end local v16    # "result":Landroid/app/WaitResult;
    .restart local v8    # "result":Landroid/app/WaitResult;
    :goto_2c8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v8, Landroid/app/WaitResult;->timeout:Z

    if-eqz v10, :cond_2da

    const-string/jumbo v10, "timeout"

    goto :goto_2dd

    :cond_2da
    const-string/jumbo v10, "ok"

    :goto_2dd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    iget-object v9, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v9, :cond_305

    .line 559
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    :cond_305
    iget-wide v9, v8, Landroid/app/WaitResult;->thisTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_323

    .line 562
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ThisTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v8, Landroid/app/WaitResult;->thisTime:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    :cond_323
    iget-wide v9, v8, Landroid/app/WaitResult;->totalTime:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_33f

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TotalTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    :cond_33f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WaitTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v4, v17

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v9, "Complete"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 571
    move-object/from16 v16, v8

    .line 571
    .end local v8    # "result":Landroid/app/WaitResult;
    .restart local v16    # "result":Landroid/app/WaitResult;
    :cond_35f
    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 572
    iget v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v8, :cond_36e

    .line 573
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v8}, Landroid/app/IActivityManager;->unhandledBack()V

    .line 575
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v3    # "res":I
    .end local v4    # "endTime":J
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "launched":Z
    .end local v16    # "result":Landroid/app/WaitResult;
    .end local v17    # "startTime":J
    .end local v24    # "options":Landroid/app/ActivityOptions;
    :cond_36e
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v0, :cond_373

    .line 576
    return v19

    .line 391
    :cond_373
    move/from16 v14, v20

    move-object/from16 v12, v22

    move/from16 v13, v23

    goto/16 :goto_45

    .line 375
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v22    # "mimeType":Ljava/lang/String;
    :catch_37b
    move-exception v0

    move-object v3, v0

    .line 376
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_388
    .packed-switch -0x62
        :pswitch_2a2
        :pswitch_28d
    .end packed-switch

    :pswitch_data_390
    .packed-switch -0x5e
        :pswitch_287
        :pswitch_281
        :pswitch_25a
        :pswitch_241
    .end packed-switch

    :pswitch_data_39c
    .packed-switch 0x0
        :pswitch_23f
        :pswitch_237
        :pswitch_22f
        :pswitch_227
    .end packed-switch
.end method

.method runStartService(Ljava/io/PrintWriter;Z)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "asForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 583
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_b7

    .line 586
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 585
    nop

    .line 587
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_16

    .line 588
    const-string v2, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    return v9

    .line 591
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 593
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.android.shell"

    iget v8, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v4, v1

    move v6, p2

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 595
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_46

    .line 596
    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    return v9

    .line 598
    :cond_46
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    return v9

    .line 601
    :cond_6b
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    return v9

    .line 604
    :cond_90
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    return v9

    .line 608
    :cond_b5
    const/4 v3, 0x0

    return v3

    .line 584
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :catch_b7
    move-exception v1

    .line 585
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStartUser(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result v1

    .line 1665
    .local v1, "success":Z
    if-eqz v1, :cond_16

    .line 1666
    const-string v2, "Success: user started"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 1668
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: could not start user"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    :goto_1f
    const/4 v2, 0x0

    return v2
.end method

.method runStopService(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 615
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_55

    .line 618
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 617
    nop

    .line 619
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 620
    const-string v2, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    return v3

    .line 623
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 625
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 626
    .local v2, "result":I
    if-nez v2, :cond_42

    .line 627
    const-string v4, "Service not stopped: was not running."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    return v3

    .line 629
    :cond_42
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4b

    .line 630
    const-string v4, "Service stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    return v3

    .line 632
    :cond_4b
    if-ne v2, v3, :cond_53

    .line 633
    const-string v4, "Error stopping service"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    return v3

    .line 636
    :cond_53
    const/4 v3, 0x0

    return v3

    .line 616
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":I
    :catch_55
    move-exception v1

    .line 617
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method runStopUser(Ljava/io/PrintWriter;)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    const/4 v0, 0x0

    .line 1720
    .local v0, "wait":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1722
    .local v0, "force":Z
    .local v2, "wait":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, -0x1

    if-eqz v3, :cond_39

    .line 1723
    const-string v3, "-w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1724
    const/4 v2, 0x1

    goto :goto_4

    .line 1725
    :cond_16
    const-string v3, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1726
    const/4 v0, 0x1

    goto :goto_4

    .line 1728
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    return v5

    .line 1732
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1733
    .local v3, "user":I
    if-eqz v2, :cond_49

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v6}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>()V

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    .line 1735
    .local v6, "callback":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    :goto_4a
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v7, v3, v0, v6}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v7

    .line 1736
    .local v7, "res":I
    if-eqz v7, :cond_a7

    .line 1737
    const-string v1, ""

    .line 1738
    .local v1, "txt":Ljava/lang/String;
    packed-switch v7, :pswitch_data_ae

    goto :goto_8b

    .line 1743
    :pswitch_58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Unknown user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1744
    goto :goto_8b

    .line 1740
    :pswitch_6f
    const-string v1, " (Can\'t stop current user)"

    .line 1741
    goto :goto_8b

    .line 1746
    :pswitch_72
    const-string v1, " (System user cannot be stopped)"

    .line 1747
    goto :goto_8b

    .line 1749
    :pswitch_75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (Can\'t stop user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " - one of its related users can\'t be stopped)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1753
    :goto_8b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Switch failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    return v5

    .line 1755
    .end local v1    # "txt":Ljava/lang/String;
    :cond_a7
    if-eqz v6, :cond_ac

    .line 1756
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V

    .line 1758
    :cond_ac
    return v1

    nop

    :pswitch_data_ae
    .packed-switch -0x4
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_58
    .end packed-switch
.end method

.method runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2756
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2757
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 2758
    const/4 v1, -0x1

    return v1

    .line 2760
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2761
    const/4 v1, 0x0

    return v1
.end method

.method runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2765
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2766
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_8

    .line 2767
    const/4 v1, -0x1

    return v1

    .line 2769
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2770
    const/4 v1, 0x0

    return v1
.end method

.method runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2161
    .local v0, "suppress":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->suppressResizeConfigChanges(Z)V

    .line 2162
    const/4 v1, 0x0

    return v1
.end method

.method runSwitchUser(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1646
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: disallowed switching user"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    const/4 v1, -0x1

    return v1

    .line 1650
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1651
    .local v1, "user":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 1652
    const/4 v2, 0x0

    return v2
.end method

.method runTask(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2604
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2605
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2606
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2607
    :cond_12
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2608
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2609
    :cond_20
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2610
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2611
    :cond_2e
    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2612
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 2614
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    const/4 v1, -0x1

    return v1
.end method

.method runTaskFocus(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2726
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2727
    .local v0, "taskId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2728
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setFocusedTask(I)V

    .line 2729
    const/4 v1, 0x0

    return v1
.end method

.method runTaskLock(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2620
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2621
    .local v0, "taskIdStr":Ljava/lang/String;
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2622
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    goto :goto_1c

    .line 2624
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2625
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V

    .line 2627
    .end local v1    # "taskId":I
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, ""

    goto :goto_34

    :cond_31
    const-string/jumbo v2, "not "

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "in lockTaskMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    const/4 v1, 0x0

    return v1
.end method

.method runTaskResize(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2643
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2644
    .local v1, "taskId":I
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2645
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_19

    .line 2646
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid input bounds"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    const/4 v3, -0x1

    return v3

    .line 2649
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    .line 2650
    return v3
.end method

.method runTaskResizeable(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2634
    .local v0, "taskIdStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2635
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2636
    .local v2, "resizeableStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2637
    .local v3, "resizeableMode":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v1, v3}, Landroid/app/IActivityManager;->setTaskResizeable(II)V

    .line 2638
    const/4 v4, 0x0

    return v4
.end method

.method runToUri(Ljava/io/PrintWriter;I)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    const/4 v0, -0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_5} :catch_10

    .line 1639
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 1638
    nop

    .line 1640
    invoke-virtual {v0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    const/4 v1, 0x0

    return v1

    .line 1637
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_10
    move-exception v0

    .line 1638
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method runTraceIpc(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 693
    :cond_12
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 696
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown trace ipc command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    const/4 v1, -0x1

    return v1
.end method

.method runTraceIpcStart(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    const-string v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 704
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->startBinderTracking()Z

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method runTraceIpcStop(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 711
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 712
    .local v1, "filename":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 712
    .local v3, "opt":Ljava/lang/String;
    const/4 v4, -0x1

    if-eqz v2, :cond_2f

    .line 713
    const-string v2, "--dump-file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 714
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 716
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    return v4

    .line 720
    :cond_2f
    if-nez v1, :cond_37

    .line 721
    const-string v2, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    return v4

    .line 725
    :cond_37
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 727
    const-string/jumbo v5, "w"

    invoke-virtual {p0, v1, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 728
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v5, :cond_49

    .line 729
    return v4

    .line 733
    :cond_49
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v6, v5}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 734
    const-string v6, "STOP TRACE FAILED."

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    return v4

    .line 738
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const/4 v4, 0x0

    return v4
.end method

.method runTrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1781
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1784
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_21

    .line 1785
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 1786
    const-string v1, "Association tracking started."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 1788
    :cond_21
    const-string v1, "Association tracking already enabled."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1791
    const/4 v0, 0x0

    return v0

    .line 1790
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUnlockUser(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1683
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1684
    .local v1, "token":[B
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1685
    .local v2, "secret":[B
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v3

    .line 1686
    .local v3, "success":Z
    if-eqz v3, :cond_27

    .line 1687
    const-string v4, "Success: user unlocked"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 1689
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: could not unlock user"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    :goto_30
    const/4 v4, 0x0

    return v4
.end method

.method runUntrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1795
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1798
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 1799
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 1800
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1801
    const-string v1, "Association tracking stopped."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 1803
    :cond_28
    const-string v1, "Association tracking not running."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1806
    return v2

    .line 1805
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2774
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2775
    .local v0, "userid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2776
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 2779
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 2781
    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 2782
    const-string v2, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2783
    const/4 v2, 0x0

    return v2
.end method

.method runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2796
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;)V

    .line 2797
    const/4 v0, 0x0

    return v0
.end method

.method runWatchUids(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    const/4 v0, -0x1

    move v1, v0

    .line 1543
    .local v1, "uid":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 1544
    const-string v2, "--oom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1547
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    return v0

    .line 1553
    :cond_33
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v2, p1, v4, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V

    .line 1554
    .local v0, "controller":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    .line 1555
    const/4 v2, 0x0

    return v2
.end method

.method runWrite(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2733
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->flush()V

    .line 2736
    const-string v0, "All tasks persisted."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    const/4 v0, 0x0

    return v0
.end method

.method setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 2584
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_36

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x72

    if-eq v0, v1, :cond_20

    const/16 v1, 0x74

    if-eq v0, v1, :cond_15

    goto :goto_40

    :cond_15
    const-string/jumbo v0, "t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :cond_20
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_2b
    const-string/jumbo v0, "l"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    goto :goto_41

    :cond_36
    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    packed-switch v0, :pswitch_data_6c

    .line 2598
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown set side: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_69

    .line 2595
    :pswitch_5d
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2596
    goto :goto_69

    .line 2592
    :pswitch_60
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 2593
    goto :goto_69

    .line 2589
    :pswitch_63
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 2590
    goto :goto_69

    .line 2586
    :pswitch_66
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 2587
    nop

    .line 2601
    :goto_69
    return-void

    nop

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
    .end packed-switch
.end method

.method taskResize(ILandroid/graphics/Rect;IZ)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "delay_ms"    # I
    .param p4, "pretendUserResize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2655
    move v0, p4

    .line 2656
    .local v0, "resizeMode":I
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2658
    int-to-long v1, p3

    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2660
    goto :goto_c

    .line 2659
    :catch_b
    move-exception v1

    .line 2661
    :goto_c
    return-void
.end method
