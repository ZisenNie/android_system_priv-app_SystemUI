.class Lcom/android/systemui/qs/customize/QSCustomizer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 240
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 235
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get4(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 231
    return-void
.end method
