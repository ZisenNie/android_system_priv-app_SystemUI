.class Lcom/android/systemui/volume/VolumeDialogMotion$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show.onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->mCancelled:Z

    .line 158
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->mCancelled:Z

    if-eqz v0, :cond_5

    return-void

    .line 154
    :cond_5
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show.onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-wrap2(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V

    .line 152
    return-void
.end method
