.class Lcom/android/systemui/statusbar/BaseStatusBar$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrMode:Z

    .line 288
    return-void
.end method
