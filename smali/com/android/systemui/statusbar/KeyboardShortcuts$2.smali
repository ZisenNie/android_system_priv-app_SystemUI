.class Lcom/android/systemui/statusbar/KeyboardShortcuts$2;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/KeyboardShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/KeyboardShortcutInfo;Landroid/view/KeyboardShortcutInfo;)I
    .registers 7
    .param p1, "ksh1"    # Landroid/view/KeyboardShortcutInfo;
    .param p2, "ksh2"    # Landroid/view/KeyboardShortcutInfo;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 100
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 101
    :goto_12
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 102
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 103
    :goto_24
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    .line 104
    const/4 v2, 0x0

    return v2

    .line 99
    :cond_2a
    const/4 v0, 0x1

    .local v0, "ksh1ShouldBeLast":Z
    goto :goto_12

    .line 101
    .end local v0    # "ksh1ShouldBeLast":Z
    :cond_2c
    const/4 v1, 0x1

    .local v1, "ksh2ShouldBeLast":Z
    goto :goto_24

    .line 106
    .end local v1    # "ksh2ShouldBeLast":Z
    :cond_2e
    if-eqz v0, :cond_32

    .line 107
    const/4 v2, 0x1

    return v2

    .line 109
    :cond_32
    if-eqz v1, :cond_36

    .line 110
    const/4 v2, -0x1

    return v2

    .line 112
    :cond_36
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "ksh1"    # Ljava/lang/Object;
    .param p2, "ksh2"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Landroid/view/KeyboardShortcutInfo;

    .end local p1    # "ksh1":Ljava/lang/Object;
    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    .end local p2    # "ksh2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->compare(Landroid/view/KeyboardShortcutInfo;Landroid/view/KeyboardShortcutInfo;)I

    move-result v0

    return v0
.end method
