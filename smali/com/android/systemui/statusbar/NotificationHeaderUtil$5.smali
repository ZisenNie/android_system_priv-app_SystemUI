.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationHeaderUtil;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;->this$0:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentData"    # Ljava/lang/Object;
    .param p4, "childData"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEmpty(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 120
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 122
    .restart local p1    # "view":Landroid/view/View;
    :cond_f
    return v0
.end method
